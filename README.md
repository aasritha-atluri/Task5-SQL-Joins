# Task 5 - SQL Joins (Inner, Left, Right, Full)

This repository contains the SQL script for **Task 5** of the SQL Developer Internship.  
It demonstrates how to combine data from multiple tables using various types of **SQL Joins**.


## Objective
To learn how to merge and analyze data stored in related tables using different join operations.


## Tools
- **MySQL Workbench**  
- **DB Browser for SQLite**


##  Prerequisite
Before running this script, ensure that:
- You have a working SQL environment (MySQL or SQLite).
- You understand basic table creation and foreign key relationships.


## What is Covered

1. **Tables**
   - **Customers** — stores customer details (`customer_id`, `name`, `city`).  
   - **Orders** — stores order details (`order_id`, `customer_id`, `product`, `amount`).

2. **Data Insertion**
   - Added sample data for customers and their orders.

3. **SQL Joins**
   - **INNER JOIN** → Returns only matching records from both tables.  
   - **LEFT JOIN** → Returns all customers, even if they have no orders.  
   - **RIGHT JOIN** → Returns all orders, even if the customer is missing.  
   - **FULL JOIN** → Combines all rows from both tables (simulated with `UNION` in MySQL).


## 📄 Files
- **joins_task.sql** → Contains: 
  - Table creation  
  - Data insertion  
  - All four join queries


## ▶️ How to Run

1. **Open your SQL tool** (MySQL Workbench or DB Browser for SQLite).  
2. **Run the script** `joins_task.sql`.  
3. **Execute the following queries** to view results:

   ```sql
   SELECT * FROM Customers;
   SELECT * FROM Orders;
