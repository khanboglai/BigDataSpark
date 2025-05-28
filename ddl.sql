-- date
create table if not exists d_times (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP, -- фактическая дата
    year INT,
    month INT,
    day INT,
    weekday INT
);

-- customer
create table if not exists d_customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    email VARCHAR(110),
    country VARCHAR(100),
    postal_code VARCHAR(100),
    pet_type VARCHAR(100),
    pet_name VARCHAR(100),
    pet_breed VARCHAR(100),
    pet_category VARCHAR(30)
);

-- seller
create table if not exists d_sellers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(110),
    country VARCHAR(100),
    postal_code VARCHAR(100)
);

-- product
create table if not exists d_products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    category VARCHAR(20),
    price DECIMAL(10, 2),
    quantity INTEGER,
    weight DECIMAL(10, 2),
    color VARCHAR(50),
    size VARCHAR(50),
    brand VARCHAR(200),
    material VARCHAR(200),
    description TEXT,
    rating DECIMAL(10, 3),
    reviews INTEGER,
    release_date TIMESTAMP,
    expiry_date TIMESTAMP
);

-- store
create table if not exists d_stores (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(200),
    city VARCHAR(100),
    state VARCHAR(60),
    country VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(110)
);

-- supplier
create table if not exists d_suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(100),
    email VARCHAR(110),
    phone VARCHAR(20),
    address VARCHAR(60),
    city VARCHAR(100),
    country VARCHAR(100)
);

-- sale
create table if not exists f_sales (
    id SERIAL PRIMARY KEY,
    date_id INT,
    customer_id INT,
    seller_id INT,
    product_id INT,
    store_id INT,
    supplier_id INT,
    quantity INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES d_customers(id),
    FOREIGN KEY (seller_id) REFERENCES d_sellers(id),
    FOREIGN KEY (product_id) REFERENCES d_products(id),
    FOREIGN KEY (date_id) REFERENCES d_times(id),
    FOREIGN KEY (store_id) REFERENCES d_stores(id),
    FOREIGN KEY (supplier_id) REFERENCES d_suppliers(id)
)