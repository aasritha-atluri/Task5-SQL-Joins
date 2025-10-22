-- Task 5: SQL Joins (Inner, Left, Right, Full)


-- Drop tables if they already exist
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

--Create the Customers table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  city VARCHAR(100)
);

--Create the Orders table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product VARCHAR(100),
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

--Insert sample data into Customers
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Arya', 'Chennai'),
(2, 'Bob', 'Mumbai'),
(3, 'Chai', 'Delhi'),
(4, 'Divya', 'Hyderabad');

--Insert sample data into Orders
INSERT INTO Orders (order_id, customer_id, product, order_date) VALUES
(101, 1, 'Laptop', '2025-10-10'),
(102, 2, 'Mouse', '2025-10-12'),
(103, 1, 'Keyboard', '2025-10-13'),
(104, 3, 'Monitor', '2025-10-15');

--Demonstrating different types of Join

--1.INNER JOIN
-- Returns only records where there is a match in both tables
SELECT Customers.name, Orders.product, Orders.order_date
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- 2.LEFT JOIN
-- Returns all records from Customers and matching records from Orders
-- Non-matching rows will have NULL for order columns
SELECT Customers.name, Orders.product, Orders.order_date
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

--3.RIGHT JOIN (only works in MySQL)
-- Returns all records from Orders and matching from Customers
-- If a customer does not exist, name will be NULL
SELECT Customers.name, Orders.product, Orders.order_date
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

--4.FULL OUTER JOIN
-- Shows all records from both tables
-- (Not supported in SQLite – use UNION workaround below)

-- For MySQL (if supported by your version):
SELECT Customers.name, Orders.product, Orders.order_date
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- For SQLite alternative (simulate FULL JOIN using UNION):
SELECT Customers.name, Orders.product, Orders.order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.name, Orders.product, Orders.order_date
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
