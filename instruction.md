### Лабораторная работа №2


Для запуска лабораторной работы необходимо:

1. Запустить `docker-compose.yml`

```bash
docker compose up --build
```

2. Создать таблицы в `postgres` используйте файлы `init_mock_data.sql` для создания таблицы `mock_data`.
`ddl.sql` для создания таблиц схемы звезда.

3. Создайте таблицы для отчетов в `clickhouse`, используйте `ch_ddl.sql`.
4. Подключитесь к jupyter lab и откройте ноутбук из папки `notebooks`.
5. Выполните все команды в ноутбуке для получения данных.

*Данные записываются в отчёты в формате json, в кликхаус эти json записываются в поле `report_data`*.

*В условии не сказано, в каком формате сохранять данные, но сказано, что должно быть 6 отчётов.*

Вот пример запроса для получения данных из текстового поля с json:

```sql
SELECT
    report_type,
    JSONExtract(report_data, 'revenue', 'Float64') AS revenue,
    JSONExtract(report_data, 'name', 'String') as name
FROM store_report
WHERE report_type = 'top_5_stores';
```

*Схема модели данных звезда лежит в файле `star.png`*