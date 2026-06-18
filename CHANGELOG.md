# 📜 Changelog

## [1.3.1] - 2026-06-18
### Corrigido
- `pyproject.toml` tinha email de autor falso (`@example.com`) e URLs
  apontando pra `github.com/robertolima/smart-time-py` (repo errado/sem o
  `-dev`) em vez do remote real — já estava publicado assim no PyPI v1.3.0.
- `smart_time_py/__init__.py` tinha `__version__ = "1.2.0"` hardcoded,
  dessincronizado da versão real publicada (1.3.0). `scripts/smoke_install.sh`
  agora valida isso automaticamente comparando com `importlib.metadata`.
- `google.auth`/`google.oauth2` eram usados em `calendar_integration.py` sem
  `google-auth` declarado diretamente em `dependencies` (dependia de vir
  transitivamente via outro pacote) — adicionado explicitamente.

### Alterado
- Removido `setup.py` duplicado; `pyproject.toml` (build via `hatchling`)
  passa a ser a única fonte de metadados do pacote.
- Build via `python -m build` + `twine check`, com CI (`ci.yml`) e release
  automatizado por tag (`release.yml`) publicando no PyPI.

## [1.3.0] - 2025-05-29
### Adicionado
- Robustez nos testes de integração com Google Calendar, com mocks aprimorados e testes unitários abrangentes.

## [1.2.0] - 2025-05-08
### Adicionado
- 📊 Módulo de análise temporal com funcionalidades avançadas:
  - Agrupamento temporal (diário, semanal, mensal, trimestral, anual)
  - Cálculo de estatísticas temporais
  - Detecção de padrões em séries temporais
  - Análise de sazonalidade
- 🧪 Testes unitários abrangentes para o módulo de análise
- 📈 Melhorias na documentação e exemplos de uso
- Integração com Google Calendar
  - Autenticação OAuth2
  - Obtenção de eventos
  - Criação de eventos
  - Atualização de eventos
  - Remoção de eventos
  - Exportação para formato iCal
- Suporte a múltiplos formatos de calendário
- Documentação atualizada com exemplos de uso
- Testes unitários para integração com calendários

### Melhorado
- Otimização de performance na manipulação de datas
- Melhor tratamento de fusos horários
- Documentação mais detalhada

### Corrigido
- Bugs menores na validação de datas
- Problemas com horário de verão em alguns fusos horários

## [1.1.3] - 2025-04-17
### Adicionado
- 🚀 Novas funções e validações

## [1.1.2] - 2025-04-17
### Adicionado
- 🚀 Novas funções e validações

## [1.1.1] - 2025-02-24
### Adicionado
- 🚀 Novas funções e validações

## [0.1.1] - 2025-02-24
### Adicionado
- 🚀 Ajuste na rota do repositório.

## [0.1.0] - 2025-02-24
### Adicionado
- 🚀 Primeira versão com conversão de data com smart_time_py.
