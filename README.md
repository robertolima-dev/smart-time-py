# 📚 **smart_time_py** - Conversão Inteligente de Datas e Horas em Python

🔗 **smart_time_py** é um pacote Python que oferece **funções práticas e flexíveis** para conversão entre `datetime` e `string`, manipulações de tempo, validações aprimoradas, suporte a fuso horário, gerenciamento de feriados e muito mais.

---

## ✨ **Funcionalidades Principais**
- 🕒 **Conversão de `string` para `datetime`** com formatação customizada
- 📝 **Conversão de `datetime` para `string`** em qualquer formato especificado
- ✅ **Validação de strings de data/hora** com suporte a múltiplos formatos
- 🌐 **Conversão de datas com suporte a fuso horário** e DST
- 🔄 **Transformações entre formatos de data** com detecção automática
- ⏳ **Manipulações de tempo**: adição, subtração e cálculo de diferença entre datas
- 📅 **Gerenciamento de feriados** com suporte a feriados nacionais e personalizados
- 📊 **Períodos e intervalos de tempo** com operações avançadas
- 📈 **Formatação inteligente** de datas e horas
- 🚀 **Funções leves e otimizadas** para aplicações diversas
- 📊 **Análise temporal avançada** com agrupamento, estatísticas e detecção de padrões

---

## ⚡ **Instalação**

Instale o pacote via **PyPI**:

```bash
pip install smart_time_py
```

> Certifique-se de ter o Python 3.8+ instalado.

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

### 📅 **Gerenciamento de Feriados**

```python
from smart_time_py.holidays import (
    is_holiday,
    add_holiday,
    remove_holiday,
    get_holidays,
    is_working_day
)
from datetime import date

# Verificar se uma data é feriado
data = date(2025, 1, 1)
print("🎉 É feriado?", is_holiday(data))

# Adicionar um feriado personalizado
add_holiday(date(2025, 4, 1), "Dia da Mentira")

# Verificar se é dia útil
print("💼 É dia útil?", is_working_day(data))

# Listar todos os feriados
print("📅 Feriados:", get_holidays(2025))
```

### 📊 **Períodos e Intervalos de Tempo**

```python
from smart_time_py.periods import (
    TimePeriod,
    DateRange,
    create_period,
    create_date_range
)
from datetime import datetime, timedelta

# Criar um período de tempo
periodo = TimePeriod(
    start=datetime(2025, 1, 1),
    end=datetime(2025, 12, 31),
    name="Ano 2025"
)

# Verificar sobreposição de períodos
outro_periodo = TimePeriod(
    start=datetime(2025, 6, 1),
    end=datetime(2025, 6, 30),
    name="Junho 2025"
)
print("📊 Períodos se sobrepõem?", periodo.overlaps(outro_periodo))

# Criar um intervalo de datas
intervalo = DateRange(
    start=date(2025, 1, 1),
    end=date(2025, 1, 31),
    step=timedelta(days=1)
)
print("📈 Datas no intervalo:", list(intervalo))
```

### 📈 **Formatação Inteligente**

```python
from smart_time_py.formatters import (
    format_relative,
    format_natural,
    format_iso
)
from datetime import datetime, timedelta

agora = datetime.now()
ontem = agora - timedelta(days=1)

# Formatação relativa
print("⏰ Formatação relativa:", format_relative(ontem))

# Formatação natural
print("📅 Formatação natural:", format_natural(agora))

# Formatação ISO
print("🌐 Formatação ISO:", format_iso(agora))
```

### 🌐 **Operações com Fuso Horário**

```python
from smart_time_py.timezone import (
    convert_timezone,
    get_timezone_info,
    is_dst,
    get_available_timezones
)
from datetime import datetime

# Converter entre fusos horários
data = datetime(2025, 1, 1, 12, 0)
nova_data = convert_timezone(data, "America/Sao_Paulo", "Europe/London")
print("🌍 Data convertida:", nova_data)

# Verificar informações do fuso horário
info = get_timezone_info("America/Sao_Paulo")
print("ℹ️ Informações do fuso:", info)

# Verificar se está em horário de verão
print("☀️ Está em horário de verão?", is_dst(data, "America/Sao_Paulo"))

# Listar fusos horários disponíveis
print("🌎 Fusos disponíveis:", get_available_timezones())
```

### 📊 **Análise Temporal Avançada**

```python
from smart_time_py.analysis import (
    TimeGroup,
    group_dates,
    calculate_temporal_stats,
    detect_temporal_patterns,
    analyze_seasonality
)
from datetime import datetime

# Criar uma lista de datas para análise
dates = [
    datetime(2025, 1, 1, 10, 0),
    datetime(2025, 1, 2, 10, 0),
    datetime(2025, 1, 3, 10, 0),
    datetime(2025, 1, 8, 10, 0),
    datetime(2025, 1, 9, 10, 0),
    datetime(2025, 1, 10, 10, 0),
]

# Agrupar datas por período
groups = group_dates(dates, TimeGroup.WEEKLY)
print("📅 Grupos semanais:", groups)

# Calcular estatísticas temporais
stats = calculate_temporal_stats(dates, TimeGroup.DAILY)
print("📊 Estatísticas diárias:", stats)

# Detectar padrões temporais
patterns = detect_temporal_patterns(dates)
print("🔄 Padrões encontrados:", patterns)

# Analisar sazonalidade
seasonality = analyze_seasonality(dates)
print("📈 Análise de sazonalidade:", seasonality)
```

### 📅 **Integração com Calendários Externos**

```python
from smart_time_py.calendar_integration import GoogleCalendarIntegration
from datetime import datetime, timedelta

# Inicializar integração com Google Calendar
calendar = GoogleCalendarIntegration()

# Autenticar com o Google Calendar
calendar.authenticate('credentials.json')

# Obter eventos do período
start_date = datetime.now()
end_date = start_date + timedelta(days=7)
events = calendar.get_events(start_date, end_date)

# Criar um novo evento
event_data = {
    'summary': 'Reunião de Projeto',
    'location': 'Sala de Conferência',
    'description': 'Discussão sobre o progresso do projeto',
    'start': datetime.now() + timedelta(days=1),
    'end': datetime.now() + timedelta(days=1, hours=1),
    'timezone': 'America/Sao_Paulo'
}
new_event = calendar.create_event(event_data)

# Atualizar um evento existente
updated_event = calendar.update_event('event_id', event_data)

# Remover um evento
calendar.delete_event('event_id')

# Exportar eventos para formato iCal
calendar.export_to_ical(events, 'eventos.ics')
```

> **Nota**: Para usar a integração com Google Calendar, você precisa:
> 1. Criar um projeto no Google Cloud Console
> 2. Habilitar a API do Google Calendar
> 3. Criar credenciais OAuth2
> 4. Baixar o arquivo de credenciais e salvá-lo como `credentials.json`

---

## 🧪 **Testes**

Execute os testes com `pytest`:

```bash
pytest -v
```

Para ver a cobertura de testes:

```bash
pytest -v --cov=smart_time_py
```

---

## 📦 **Dependências**

- Python 3.8+
- pytz>=2023.3
- python-dateutil>=2.8.2
- babel>=2.12.1

---

## 📄 **Licença**

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

---

## 🤝 **Contribuições**

Contribuições são bem-vindas! Por favor, leia as diretrizes de contribuição antes de enviar um pull request.

---

## 📞 **Suporte**

Para suporte, por favor abra uma issue no [GitHub](https://github.com/robertolima-dev/smart-time-py/issues).

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
├── pyproject.toml              # ⚙️ Configuração do pacote (build via hatchling)
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
