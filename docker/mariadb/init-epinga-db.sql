CREATE DATABASE IF NOT EXISTS epinga_db;
CREATE USER IF NOT EXISTS 'epinga_db_user'@'%' IDENTIFIED BY 'epinga_db_user_password';
GRANT ALL PRIVILEGES ON *.* TO 'epinga_db_user'@'%';
FLUSH PRIVILEGES;

USE epinga_db;

CREATE TABLE IF NOT EXISTS user (
    document INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    password_hash VARCHAR(200) NOT NULL,
    register_date DATE
);

CREATE TABLE IF NOT EXISTS payment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    payment_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS order_status (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(100),
    description VARCHAR(500),
    stock INT,
    price FLOAT
);

CREATE TABLE IF NOT EXISTS orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_payment BIGINT,
    user_document INT,
    order_date DATETIME,
    payment_date DATETIME,
    destination_address VARCHAR(200),
    id_order_status BIGINT,
    FOREIGN KEY (user_document) REFERENCES user(document),
    FOREIGN KEY (id_payment) REFERENCES payment(id),
    FOREIGN KEY (id_order_status) REFERENCES order_status(id)
);

CREATE TABLE IF NOT EXISTS orders_itens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_order BIGINT,
    id_product BIGINT,
    quantity INT,
    unit_price FLOAT,
    order_total FLOAT,
    discount FLOAT,
    FOREIGN KEY (id_order) REFERENCES orders(id),
    FOREIGN KEY (id_product) REFERENCES product(id)
);

commit;