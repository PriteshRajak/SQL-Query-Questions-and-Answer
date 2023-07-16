SHOW TABLES;
# Q.1 Retrieve all customers from the "Customers" table.
SELECT * FROM Customers;

#Q.2 Retrieve the names of all employees from the "Employees" table.
SELECT FirstName, LastName FROM Employees;

# Q.3 Retrieve all products from the "Products" table.
SELECT * FROM Products;

# Q.4 Retrieve the order details for a 10261 from the "Orders" table.
SELECT * FROM orders WHERE OrderID = 10261;

# Q.5 Retrieve the total number of orders placed.
SELECT COUNT(*) AS TotalOrders FROM Orders;

# Q.6 Retrieve the average unit price of all products.
SELECT AVG(UnitPrice) AS AverageUnitPrice FROM Products;

# Q.7 Retrieve the orders placed by a ROMEY.
SELECT * FROM Orders WHERE CustomerID = 'ROMEY';

# Q.8 Retrieve the products with a unit price greater than $50.
SELECT * FROM Products WHERE UnitPrice > 50;

# Q.9 Retrieve the orders placed in the year 1996.
SELECT * FROM Orders WHERE YEAR(OrderDate) = 1996;

# Q.10 Retrieve the total number of orders placed by each employee in each year from the Orders table.
SELECT YEAR(OrderDate) AS OrderYear, EmployeeID, COUNT(*) AS TotalOrders FROM Orders
GROUP BY YEAR(OrderDate), EmployeeID ORDER BY OrderYear, EmployeeID;

# Q.11 Retrieve the number of orders placed by each customer.
SELECT CustomerID, COUNT(*) AS TotalOrders FROM Orders
GROUP BY CustomerID;

# Q.12 Retrieve the products with no units in stock.
SELECT * FROM Products WHERE UnitsInStock = 0;

# Q.13 Retrieve the customers who have a fax number.
SELECT * FROM Customers WHERE Fax IS NOT NULL;

# Q.14 Retrieve the employees who were born after 1955.
SELECT * FROM Employees WHERE YEAR(BirthDate) > 1955;

# Q.15 Retrieve all customers who have placed at least 5 orders from the Customers and Orders tables.
SELECT c.CustomerID, c.ContactName, COUNT(*) AS TotalOrders FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.ContactName HAVING COUNT(*) >= 5;

# Q.16 Retrieve the orders that were shipped to a USA.
SELECT * FROM Orders WHERE ShipCountry = 'USA';

# Q.17 Retrieve the employees who are in the sales department.
SELECT * FROM Employees WHERE Title LIKE '%Sales%';

# Q.18 Retrieve the products that were discontinued.
SELECT * FROM Products WHERE Discontinued = 1;

# Q.19 Retrieve the customers who have placed more than 10 orders.
SELECT CustomerID, COUNT(*) AS TotalOrders FROM Orders 
GROUP BY CustomerID HAVING COUNT(*) > 10;

# Q.20 Retrieve the number of orders placed by each employee from the Orders table.
SELECT EmployeeID, COUNT(*) AS TotalOrders FROM Orders
GROUP BY EmployeeID;