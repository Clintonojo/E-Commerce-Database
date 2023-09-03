--create the Customer Table
Create Table Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
     Customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255)NOT NULL,
     shipping_address TEXT,
  payment_info TEXT
    
);
--Create The Products Table
Create Table Categories(
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255)
);


-- Create the Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    description TEXT,
    product_price DECIMAL(5,2),
    stock_quantity INT,
    category_id INT
);


-- Add a foreign key constraint to the category_id column --Insert category_id INT foregin KEY Alter the table
ALTER TABLE Products
ADD FOREIGN KEY (category_id)
REFERENCES Categories(category_id);




CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date TIMESTAMP DEFAULT '2023-09-02 10:39:37',
    customer_id INT,
    status VARCHAR(35)
);
--Addint the foregin key constraint to Orders table
ALTER TABLE Orders
ADD FOREIGN KEY (customer_id)
REFERENCES Customers(customer_id);

CREATE TABLE OrderDetails(
  order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  product_id INT,
  quantity INT,
  total_price DECIMAL(8,2)



);
ALTER TABLE  OrderDetails
ADD FOREIGN KEY(order_id)
REFERENCES Orders(order_id);


ALTER TABLE  OrderDetails
ADD FOREIGN KEY(product_id)
REFERENCES Products(product_id);

CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT,
    comment TEXT
);
--ALTER THE REVIEW TABLE BY ADDING A FOREIGN KEY AND REFRENCING THE PRODUCT TABLE
ALTER TABLE Reviews
 ADD FOREIGN KEY (product_id)
REFERENCES Products(product_id);

ALTER TABLE Reviews
ADD FOREIGN KEY (customer_id)
REFERENCES Customers(customer_id);

--ATTRIBUTES THEN VALUES.

-- Insert a Example customer into the Customers table
INSERT INTO Customers (Customer_name, email, password_hash, shipping_address, payment_info)
VALUES ('Adam ', 'Adam@example.com', 'hashed_password', '123 left St', 'Debit Card');

-- Insert a Example category into the Categories table
INSERT INTO Categories (category_name)
VALUES ('Books');

-- Insert a Example product into the Products table
INSERT INTO Products (product_id, product_name, description, product_price, stock_quantity, category_id)
VALUES (6, 'Book', 'Bible', 800.99, 99, 1);

-- Insert a Example order into the Orders table
INSERT INTO Orders (order_date, customer_id, status)
VALUES ('2023-09-01 11:00:00', 2, 'Shipped');

-- Insert a Example order detail into the OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price)
VALUES (2, 1, 3, 4000);

-- Insert a Example review into the Reviews table
INSERT INTO Reviews (product_id, customer_id, rating, comment)
VALUES (1, 2, 5, 'Great product!');


SELECT DISTINCT email FROM Customers;--This Query Only selects Unique Entries only aka making sure theres no duplicates.
SELECT * FROM Reviews --Where can be used for filtering U pick a table then a column then u look for specific string or numeric value
WHERE rating=5;

SELECT*FROM Products
Order By product_price ASC;--This Orders the table U put a Table then any column and u can order by ASC OR DESC

SELECT*
FROM  Reviews
Where rating=5 AND comment LIKE 'Great product';--Selects From reviw table  and where rating column =5 and comment = great product.


SELECT*FROM Customers
WHERE NOT Customer_name='John Doe';--SELECTS FROM THE CUSTOMERS TABLE AND GOES TO THE customer name table and selects everyname expect JOHN DOE.

SELECT * FROM Reviews--Selects from the Review table and the limit is 3 rows.
LIMIT 3;

DESCRIBE Orders;


Select*FROM Customers;


Drop Table Products;