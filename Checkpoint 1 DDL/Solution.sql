CREATE TABLE products (
	product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(20) NOT NULL,
    price INT
);

CREATE TABLE customers (
	customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    customer_tel INT
);

CREATE TABLE orders (
    customer_idf VARCHAR(20),
    product_idf VARCHAR(20),
    quantity INT,
    total_amount INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_idf) REFERENCES customers (customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_idf) REFERENCES products (product_id)
);

ALTER TABLE products ADD category VARCHAR(20);
ALTER TABLE orders ADD order_date DATE DEFAULT CURRENT_DATE();