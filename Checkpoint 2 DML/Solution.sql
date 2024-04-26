INSERT INTO products (product_id, product_name, category, price) VALUES ('P01', 'Samsung Galaxy S20', 'Smartphone', 3299);
INSERT INTO products (product_id, product_name, category, price) VALUES ('P02', 'ASUS Notebook', 'PC', 4599);

INSERT INTO customers (customer_id, customer_name, customer_tel) VALUES ('C01', 'ALI', 71321009);
INSERT INTO customers (customer_id, customer_name, customer_tel) VALUES ('C02', 'ASMA', 77345823);

INSERT INTO orders (customer_idf, product_idf, order_date, quantity, total_amount) VALUES ('C01', 'P02', NULL, 2, 9198);
INSERT INTO orders (customer_idf, product_idf, order_date, quantity, total_amount) VALUES ('C02', 'P01', '28/05/2020', 1, 3299);