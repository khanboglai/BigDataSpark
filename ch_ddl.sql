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

-- отчет по продажам по времени
CREATE TABLE report_time
(
--     id UInt32,
    report_data String,
    report_type String
)
ENGINE = MergeTree
ORDER BY tuple();


-- отчет по магазинам
CREATE TABLE store_report (
    report_type String,
    report_data String
) ENGINE = MergeTree()
ORDER BY tuple();


-- отчет по поставщикам
CREATE TABLE report_supplier (
    report_type String,
    report_data String
) ENGINE = MergeTree()
ORDER BY tuple();


-- отчет по качеству продукции
CREATE TABLE report_quality (
    report_type String,
    report_data String
) ENGINE = MergeTree()
ORDER BY tuple();
