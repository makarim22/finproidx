CREATE TABLE DimCustomer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    handphone_number VARCHAR(15)
);

CREATE TABLE DimProduct (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    product_unit_price DECIMAL(10, 2)
);

CREATE TABLE DimStatusOrder (
    status_id INT PRIMARY KEY,
    status_order VARCHAR(20),
    status_order_desc VARCHAR(100)
);

CREATE TABLE FactStatusOrder (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    amount DECIMAL(10, 2),
    status_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_id),
    FOREIGN KEY (product_id) REFERENCES DimProduct(product_id),
    FOREIGN KEY (status_id) REFERENCES DimStatusOrder(status_id)
);

