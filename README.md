# 📚 **smart_time_py** - Conversão Inteligente de Datas e Horas em Python

🔗 **smart_time_py** é um pacote Python que oferece **funções práticas e flexíveis** para conversão entre `datetime` e `string`, manipulações de tempo, validações aprimoradas e suporte a fuso horário.

---

## ✨ **Funcionalidades Principais**
- 🕒 **Conversão de `string` para `datetime`** com formatação customizada.
- 📝 **Conversão de `datetime` para `string`** em qualquer formato especificado.
- ✅ **Validação de strings de data/hora**.
- 🌐 **Conversão de datas com suporte a fuso horário**.
- 🔄 **Transformações entre formatos de data**.
- ⏳ **Manipulações de tempo**: adição, subtração e cálculo de diferença entre datas.
- 🚀 **Funções leves e otimizadas para aplicações diversas.**

---

## ⚡ **Instalação**

Instale o pacote via **PyPI**:

```bash
pip install smart_time_py
```

> Certifique-se de ter o Python 3.6+ instalado.

---

## 🚀 **Como Usar**

### 🕒 **Conversão de String para Datetime**

```python
from smart_time_py.converter import string_to_datetime

date_str = "2025-02-24 14:30:00"
date_format = "%Y-%m-%d %H:%M:%S"
dt = string_to_datetime(date_str, date_format)
print("🕒 String para datetime:", dt)
```

### 📝 **Conversão de Datetime para String**

```python
from smart_time_py.converter import datetime_to_string
from datetime import datetime

dt_obj = datetime(2025, 2, 24, 14, 30)
date_format = "%d/%m/%Y %H:%M"
dt_str = datetime_to_string(dt_obj, date_format)
print("📝 Datetime para string:", dt_str)
```

### ✅ **Validação de String de Data**

```python
from smart_time_py.converter import validate_date_string

is_valid = validate_date_string("24/02/2025", "%d/%m/%Y")
print("✅ String de data válida:", is_valid)
```

### 🌐 **Conversão com Fuso Horário**

```python
from smart_time_py.converter import convert_with_timezone

resultado = convert_with_timezone("2025-02-25 15:00:00", "America/Sao_Paulo")
print("🌐 Data com fuso horário:", resultado)
```

### ⏳ **Manipulação de Tempo**

```python
from smart_time_py.converter import add_time, subtract_time
from datetime import datetime

base_date = datetime(2025, 1, 1)
print("➕ Data após manipulação:", add_time(base_date, days=10, months=1))
print("➖ Data após subtração:", subtract_time(base_date, years=1))
```

### 📏 **Diferença entre Datas**

```python
from smart_time_py.converter import calculate_difference

date1 = datetime(2025, 1, 1)
date2 = datetime(2025, 2, 1)
print("📏 Diferença em dias:", calculate_difference(date1, date2, "days"))
```

---

## 🧪 **Testes**

Execute os testes com `pytest`:

```bash
pytest tests/
```

Para uma saída detalhada:

```bash
pytest -v
```

---

## 🏗 **Estrutura do Projeto**

```
smart_time_py/
│
├── smart_time_py/              # 📦 Código do pacote
│   ├── __init__.py
│   └── converter.py            # 🔄 Funções principais de conversão e manipulação
│
├── tests/                      # 🧪 Testes unitários
│   └── test_converter.py
│
├── setup.py                    # ⚙️ Configuração para publicação
├── pyproject.toml              # 📦 Configuração moderna
├── README.md                   # 📚 Documentação do projeto
├── LICENSE                     # 📜 Licença MIT
└── MANIFEST.in                 # 📋 Inclusão de arquivos extras
```

---

## 📝 **Licença**

Distribuído sob a **Licença MIT**. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

---
## 👨‍💻 **Autor**

Desenvolvido por **[Roberto Lima](https://robertolima-developer.vercel.app/)** 🚀✨

---

## 💬 **Contato**

- 📧 **Email**: robertolima.izphera@gmail.com
- 💼 **LinkedIn**: [Roberto Lima](https://www.linkedin.com/in/roberto-lima-01/)

---

## ⭐ **Gostou do projeto?**

Deixe uma ⭐ no repositório e compartilhe com a comunidade! 🚀✨

---

## 🌟 **O que este README oferece?**
- 🎯 **Descrição clara** do projeto e seu propósito.  
- 🛠 **Instruções detalhadas de instalação** e **uso prático**.  
- 🧪 **Guia de testes** para garantir que o código funciona.  
- 🏗 **Estrutura do projeto** para facilitar a navegação.  
- 🔄 **Seção de contribuição** para quem deseja ajudar no desenvolvimento.  
- 📝 **Licença e informações do autor** para transparência.
