1. SELECT CategoryName FROM Categories
2. SELECT ContactName, CustomerID, CompanyName FROM Customers WHERE Country = 'London'
3. SELECT * FROM Suppliers WHERE Fax is not null AND ContactTitle = 'Sales Representative' OR ContactName = 'Marketing Manager'
4. SELECT CustomerID FROM Orders WHERE OrderDate between 'Jan 1, 1997' and 'Jan 1, 1998' and Freight < '100'
5. SELECT CompanyName, ContactName FROM Customers Where Country = 'Mexico' or Country = 'Sweden' or Country = 'Germany'
6. SELECT COUNT (Discontinued) FROM Products
7. SELECT CategoryName, Description FROM Categories WHERE CategoryName like 'Co%'
8. SELECT CompanyName, City, Country, PostalCode FROM Suppliers WHERE Address like '%rue%'
9. SELECT ProductID, Quantity FROM [Order Details]
10. SELECT c.ContactName, c.Address FROM Customers c, Shippers s WHERE s.CompanyName = 'Speedy Express'
11. SELECT CompanyName, ContactName, ContactTitle, Region FROM Suppliers 
12. SELECT p.ProductName FROM Products p, Categories c WHERE c.CategoryName = 'condiments'
13. SELECT c.ContactName FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.CustomerID IS NULL;
14. INSERT INTO Shippers (CompanyName) VALUES ('Amazon')
15. UPDATE Shippers SET CompanyName='Amazon Prime Shipping' WHERE CompanyName='Amazon'
16. SELECT s.CompanyName, ROUND(SUM(o.Freight), 0) AS AverageTotalFreight FROM Shippers s, Orders o GROUP BY s.CompanyName
17. SELECT LastName+', ' +FirstName AS DisplayName FROM Employees
18. INSERT INTO Customers (CustomerID, ContactName, CompanyName) VALUES ('ORIGI', 'Joseph Kalb', 'Origin Code')  SELECT SCOPE_IDENTITY()
	INSERT INTO Orders (CustomerID) VALUES (SCOPE_IDENTITY()) SELECT SCOPE_IDENTITY() 
	INSERT INTO [Order Details] (OrderID, ProductID) VALUES (SCOPE_IDENTITY(), (SELECT ProductID FROM Products WHERE ProductName = 'Grandma''s Boysenberry Spread')) 
19. DELETE FROM Orders WHERE CustomerID = 'ORIGIN' SELECT SCOPE_IDENTITY()
	DELETE FROM [Order Details] WHERE OrderID = SCOPE_IDENTITY() 
	DELETE FROM Customers WHERE ContactName = 'Joseph Kalb'
20. SELECT ProductName, UnitsInStock FROM Products WHERE UnitsInStock > 100