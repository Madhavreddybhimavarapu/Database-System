CREATE TABLE customer (customer_id INT,Email VARCHAR(255),Password VARCHAR(255),NAME VARCHAR(255),Phone VARCHAR(255),PRIMARY KEY (customer_id));

CREATE TABLE orderr (Order_id INT,customer_id INT,Shipping_address VARCHAR(255),Order_date date,PRIMARY KEY (Order_id),FOREIGN KEY (customer_id) REFERENCES customer(customer_id));

CREATE TABLE category (Category_id INT,Name VARCHAR(255),Description TEXT,PRIMARY KEY (Category_id));

CREATE TABLE product (Product_id INT,NAME VARCHAR(255),Price FLOAT,Weight FLOAT,Description TEXT,Category_id INT,Stock INT,PRIMARY KEY (Product_id),FOREIGN KEY (Category_id) REFERENCES category(Category_id));

CREATE TABLE Orderline (Orderline_id INT,Order_id INT,Product_id INT,Quantity INT,PRIMARY KEY (Orderline_id),FOREIGN KEY (Order_id) REFERENCES orderr(Order_id),FOREIGN KEY (Product_id) REFERENCES product(Product_id));