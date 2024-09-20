CREATE DATABASE IF NOT EXISTS epinga_db;
CREATE USER IF NOT EXISTS 'epinga_db_user'@'%' IDENTIFIED BY 'epinga_db_user_password';
GRANT ALL PRIVILEGES ON *.* TO 'epinga_db_user'@'%';
FLUSH PRIVILEGES;

USE epinga_db;

CREATE TABLE IF NOT EXISTS user (
    document INT PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    email VARCHAR(100),
    password_hash VARCHAR(200) NOT NULL,
    register_date DATE
);

CREATE TABLE IF NOT EXISTS product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    merchant_document VARCHAR(20),
    id_category BIGINT,
    description VARCHAR(500),
    stock INT,
    price FLOAT
);

CREATE TABLE IF NOT EXISTS user_address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(200),
    city VARCHAR(100),
    state VARCHAR(45),
    zip_code VARCHAR(10),
    country VARCHAR(45),
    id_user_document BIGINT,
    FOREIGN KEY (id_user_document) REFERENCES user(document)
);

CREATE TABLE IF NOT EXISTS order (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_document INT,
    id_cart BIGINT,
    id_user_address BIGINT,
    order_date DATETIME,
    payment_date DATETIME,
    order_status VARCHAR(45),
    order_total FLOAT,
    FOREIGN KEY (user_document) REFERENCES user(document),
    FOREIGN KEY (id_user_address) REFERENCES address(id)
);

CREATE TABLE IF NOT EXISTS payment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_document INT,
    id_order BIGINT,
    payment_date DATETIME,
    payment_status VARCHAR(45),
    FOREIGN KEY (user_document) REFERENCES user(document),
    FOREIGN KEY (id_order) REFERENCES order(id)
);

CREATE TABLE IF NOT EXISTS order_itens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_order BIGINT,
    id_product BIGINT,
    FOREIGN KEY (id_order) REFERENCES order(id)
    FOREIGN KEY (id_product) REFERENCES product(id)
);

CREATE TABLE IF NOT EXISTS category_product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS merchant (
    document VARCHAR(20) PRIMARY KEY,
    phantasy_name VARCHAR(100),
    phone VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS cart (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_document INT,
    dtAbertura DATETIME,
    page VARCHAR(45),
    FOREIGN KEY (user_document) REFERENCES user(document)
);

CREATE TABLE IF NOT EXISTS cart_itens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_cart INT,
    id_product INT,
    FOREIGN KEY (id_cart) REFERENCES cart(id),
    FOREIGN KEY (id_product) REFERENCES product(id)
);

