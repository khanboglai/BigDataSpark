-- таблицы для хранения отчетов в clickhouse

-- продукты
CREATE TABLE report_product
(
--     id UInt32,
    report_data String,
    report_type String
)
ENGINE = MergeTree
ORDER BY tuple();

-- покупатели
CREATE TABLE report_customer
(
--     id UInt32,
    report_data String,
    report_type String
)
ENGINE = MergeTree
ORDER BY tuple();


CREATE TABLE report_time
(
--     id UInt32,
    report_data String,
    report_type String
)
ENGINE = MergeTree
ORDER BY tuple();