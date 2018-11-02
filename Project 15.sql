--Ruben Morales Jr
--Project 15
--MIS 315

USE Northwind

--1.Give a list of Categories with no products.

SELECT     Categories.CategoryName
FROM       Categories LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE      Products.ProductID IS NULL
ORDER BY   Categories.CategoryName
 
--2.Give a list of Categories and the number of products in each category. Include every category, even those without products in them.

SELECT     Categories.CategoryName,
           COUNT( Products.ProductID ) AS [# of Products]
FROM       Categories LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID
GROUP BY   Categories.CategoryName
ORDER BY   Categories.CategoryName

--3.Give a list of shippers that have never been used.

SELECT     Shippers.CompanyName
FROM       Shippers LEFT JOIN Orders ON Orders.ShipVia = Shippers.ShipperID
WHERE      Orders.OrderID IS NULL
ORDER BY   Shippers.CompanyName

--4.Give a list of shippers and the number of orders that they have shipped. Include every shipper, even those who haven't shipped any orders.

SELECT     Shippers.CompanyName,
           COUNT( Orders.OrderID ) AS [# of Orders Shipped]
FROM       Shippers LEFT JOIN Orders ON Orders.ShipVia = Shippers.ShipperID
GROUP BY   Shippers.CompanyName
ORDER BY   Shippers.CompanyName

--5.Give a list of products that have not been on any orders.

SELECT     Products.ProductName
FROM       Products LEFT JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
WHERE      [Order Details].OrderID IS NULL
ORDER BY   Products.ProductName

--6.Give a list of products and how many orders they have been on. Include every product, even those that have never appeared on an order.

SELECT     Products.ProductName,
           COUNT( [Order Details].OrderID ) AS [# of Orders]
FROM       Products LEFT JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY   Products.ProductName
ORDER BY   Products.ProductName

--7.Give a list of Customers who have never placed an order.

SELECT     Customers.ContactName
FROM       Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE      Orders.OrderID IS NULL
ORDER BY   Customers.ContactName

--8.Give a list of Customers and how many orders they have placed. Include every customer.

SELECT     Customers.ContactName,
           COUNT( Orders.OrderID ) AS [# of Orders Placed]
FROM       Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY   Customers.ContactName
ORDER BY   Customers.ContactName

--9.Give a list of every product. Include the Supplier's company name, where available.

SELECT     Products.ProductName,
           Suppliers.CompanyName
FROM       Products LEFT JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
ORDER BY   Products.ProductName

--10.Give a list of every order. Include the Shipper's company name where available.

SELECT     Orders.OrderID,
           Shippers.CompanyName
FROM       Orders LEFT JOIN Shippers ON Shippers.ShipperID = Orders.ShipVia
ORDER BY   Orders.OrderID