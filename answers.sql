-- answers.sql
-- Joins and Relationships Assignment
-- 🚀 Demonstrating INNER JOIN, LEFT JOIN, and RIGHT JOIN

/* 
📌 ERD-Style Notes:
- employees → offices : Each employee belongs to one office (officeCode).
- products → productlines : Each product belongs to a product line (productLine).
- customers → orders : Each customer can place many orders (customerNumber).
*/


/* 
Question 1 🧑‍💼
Get the firstName, lastName, email, and officeCode of all employees.
Use an INNER JOIN with offices on officeCode.
*/
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


/* 
Question 2 🛍️
Get the productName, productVendor, and productLine from the products table.
Use a LEFT JOIN with productlines on productLine.
*/
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;


/* 
Question 3 📦
Retrieve the orderDate, shippedDate, status, and customerNumber 
for the first 10 orders.
Use a RIGHT JOIN with customers on customerNumber.
*/
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
