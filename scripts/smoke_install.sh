#!/usr/bin/env bash
# Builda o wheel e instala numa venv limpa (sem deps de dev) para pegar
# dependências/entry points que só faltam fora do ambiente de desenvolvimento.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

rm -rf dist build
rm -rf ./*.egg-info 2>/dev/null || true
python -m build

VENV_DIR="$(mktemp -d)/venv"
python -m venv "$VENV_DIR"
"$VENV_DIR/bin/pip" install -q "$(ls dist/*.whl)"

"$VENV_DIR/bin/python" -c "
import importlib.metadata
import smart_time_py
from smart_time_py.converter import string_to_datetime, datetime_to_string
d = string_to_datetime('2024-01-01', '%Y-%m-%d')
assert datetime_to_string(d, '%Y-%m-%d') == '2024-01-01'
installed = importlib.metadata.version('smart_time_py')
assert smart_time_py.__version__ == installed, (
    f'__version__ ({smart_time_py.__version__}) != versão instalada ({installed})'
)
print('IMPORT OK — versão:', smart_time_py.__version__)
"

rm -rf "$(dirname "$VENV_DIR")"
echo "Smoke test passou."
