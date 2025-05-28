import pandas as pd
import re

# Загружаем CSV
df = pd.read_csv("mock_data_full.csv", dtype=str)
# Читаем как строки, чтобы не было сбоев при анализе

# Регулярка для даты в формате MM/DD/YYYY
date_pattern = re.compile(r'^\d{1,2}/\d{1,2}/\d{4}$')

# Функция для попытки приведения к дате
def try_parse_date(val):
    val = str(val).strip()
    if date_pattern.match(val):
        try:
            return pd.to_datetime(val, format="%m/%d/%Y").strftime("%Y-%m-%d")
        except:
            return val
    return val

# Применяем ко всем ячейкам
for col in df.columns:
    df[col] = df[col].apply(try_parse_date)

# Сохраняем очищенный CSV
df.to_csv("mock_data_fixed.csv", index=False)
