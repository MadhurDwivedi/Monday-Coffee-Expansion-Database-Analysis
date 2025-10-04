/* Table Creation and Data Importaion */

-- 1- Creation of city table

DROP TABLE IF EXISTS city;

CREATE TABLE city
(
	city_id	INT PRIMARY KEY,
	city_name VARCHAR(15),	
	population	BIGINT,
	estimated_rent	FLOAT,
	city_rank INT
);

SELECT * FROM city;

-- 2- Creation of customers table 

DROP TABLE IF EXISTS customers;

CREATE TABLE customers
(
	customer_id INT PRIMARY KEY,	
	customer_name VARCHAR(25),	
	city_id INT,
	CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city(city_id)
);

SELECT * FROM customers;

-- 3- Creation of products table

DROP TABLE IF EXISTS products;

CREATE TABLE products
(
	product_id	INT PRIMARY KEY,
	product_name VARCHAR(35),	
	Price float
);

SELECT * FROM products;

-- 4- Creation of sales table 

DROP TABLE IF EXISTS sales;

CREATE TABLE sales
(
	sale_id	INT PRIMARY KEY,
	sale_date	date,
	product_id	INT,
	customer_id	INT,
	total FLOAT,
	rating INT,
	CONSTRAINT fk_products FOREIGN KEY (product_id) REFERENCES products(product_id),
	CONSTRAINT fk_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
);

SELECT * FROM sales;