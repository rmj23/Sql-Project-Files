-- Ruben Morales Jr
-- Project 3
-- MIS 315

USE Northwind

-- 1.Select the ProductName and UnitPrice of all products with less than 10 unitsIn stock. Order by ProductName.

SELECT   ProductName,
         UnitPrice
FROM     Products
WHERE    10 > UnitsInStock
ORDER BY ProductName

-- 2.Select the ProductName and UnitPrice of all products whose units in stock are less than half of the reorder level. Order by units in stock ascending.

SELECT   ProductName,
         UnitPrice
FROM     Products
WHERE    UnitsInStock < (ReorderLevel/2.0)
ORDER BY UnitsInStock ASC

-- 3.Select the ProductName of all active products (not discontinued). Order by Productname.

SELECT   ProductName
FROM     Products
WHERE    Discontinued = 0
ORDER BY ProductName

-- 4.Select the ProductName of all active products whose units in stock are less than half of the reorder level. Order by ProductName.

SELECT   ProductName,
         UnitsInStock,
		 ReorderLevel
FROM     Products
WHERE    UnitsInStock < (ReorderLevel / 2.0)
ORDER BY ProductName

-- 5.Select the ProductName of all products in category 3 that are more than $16, and all products in category 5 that are less than $10. Order by price ascending.

SELECT   ProductName
FROM     Products
WHERE    (CategoryID = 3 AND UnitPrice > 16)
   OR    (CategoryID = 5 AND UnitPrice < 10)
ORDER BY UnitPrice ASC

-- 6.Select ProductID, ProductName, and SupplierID of all products that have the word "jars" in the QuantityPerUnit. Use the LIKE operator. Order by ProductID.

SELECT   ProductID,
         ProductName,
		 SupplierID
FROM     Products
WHERE    QuantityPerUnit LIKE '%jars%'
ORDER BY ProductID

-- 7.Select ProductID, ProductName, and SupplierID of all products that have the word "Ale", "Lager", or "Coffee" in the productname. Order by ProductID.

SELECT   ProductID,
         ProductName,
		 SupplierID
FROM     Products
WHERE    ProductName LIKE '% Ale %'
    OR   ProductName LIKE 'Ale %'
	OR   ProductName LIKE '% Ale'
	OR   ProductName LIKE '% Lager %'
	OR   ProductName LIKE 'Lager %'
	OR   ProductName LIKE '% Lager'
	OR   ProductName LIKE '% Coffee %'
	OR   ProductName LIKE 'Coffee %'
	OR   ProductName LIKE '% Coffee'
ORDER BY ProductID

-- 8.Select ProductID, ProductName, and SupplierID of all products that are supplied by suppliers 21, 5, or 16. Use the IN operator. Order by ProductID.

SELECT   ProductID,
         ProductName,
		 SupplierID
FROM     Products
WHERE    SupplierID  IN (21, 5, 16)
ORDER BY ProductID

-- 9.Select ProductID, ProductName, and SupplierID of all products that are supplied by suppliers other than 21, 5, or 16. Use the NOT IN operator. Order by ProductID.

SELECT   ProductID,
         ProductName,
         SupplierID
FROM     Products
WHERE    SupplierID   NOT IN (21, 5, 16)
ORDER BY ProductID

-- 10.Select the ProductID, ProductName, and UnitPrice and UnitsInStock of all products for which we currently carry more than $600 in inventory. Order by ProductID.

SELECT   ProductID,
         ProductName,
         UnitPrice,
         UnitsInStock
FROM     Products
WHERE    UnitPrice*UnitsInStock > 600.0
ORDER BY ProductID