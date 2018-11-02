--Ruben Morales Jr
--Project 1
--MIS 315

Use Northwind

-- 1. Show the number 77458 in a one-row, one-column table using SELECT.

Select 77458

-- 2. Show the word "referential" in a one-row, one-column table using SELECT.

Select 'referential'

-- 3. Show the number 3 in a one-row, one-column table. The column should be named "Even Number".

Select 3 AS [Even Number]

-- 4. Show the SQRT (square root) of the number 34567 in a one-column, one-row table. The column name should be "SquareRoot".

Select SQRT(34567) AS [SquareRoot]

-- 5. Show the result of this calculation in a one-row, one-column table: ((34.0*72.0)+7.0)/3.0 . Name the column "calculation result".

Select ((34.0*72.0)+7.0)/3.0 AS [calculation result]

-- 6. Find the SQRT of 133765, and multiple it by the SQRT of 33987. Show the result in a one-row, one-column table where the column is called "calculation result". Use a single SELECT statement.

Select SQRT(133765)*SQRT(33987) AS [calculation result]

-- 7. Combine the strings "Barney" and "Rubble" with a space between them in a single-row, single-column table using a single SELECT statement and two + operators. This should be a concatenation of three strings: "Barney", " ", and "Rubble". Name the column "fullname".

Select 'Barney' + ' ' + 'Rubble' AS [fullname]

-- 8. Show a 3-column, 1 row table that has 345, "Barney", 35*28 in the columns. The columns should be named "number", "name", and "result".

Select 345        AS [number],
       'Barney'   AS [name],
       35*28      AS [result]

-- 9. Select the ProductName from the Products table, to create a one-column, multiple-row table. Do not rename the column. 

Select ProductName
From   Products

-- 10. Select the ProductID and the ProductName from the Products table. Product ID should be in the first column, product name in the second. 

Select ProductID,
       ProductName
From   Products

-- 11. Select the ProductName and the ProductID from the Products table. ProductName should be in the first column, and productID in the second. 

Select ProductName,
       ProductID
From   Products
     
-- 12. Select the ProductName, and 90% of the UnitPrice from the Products table. ProductName should be the first column, and the second column should be named "Discounted Price".

Select ProductName,
       .90*UnitPrice AS [Discounted Price]
From   Products

-- 13. Show all products' ProductID, productName, categoryID, UnitsInStock and ReorderLevel. Rename each column appropriately. 

Select ProductID    AS [Product ID],
       ProductName  AS [Product Name],
       CategoryID   AS [Category ID],
	   UnitsInStock AS [Units In Stock],
	   ReorderLevel AS [Reorder Level]
From   Products

-- 14. Show all products' ProductID, ProductName, and the result UnitsInStock times UnitPrice. Rename the columns appropriately. "Inventory Value" would be a good name for the last column.

Select ProductID              AS [Product ID],
       ProductName            AS [Product Name],
	   UnitsInStock*UnitPrice AS [Inventory Value]
From   Products

-- 15. Show all products' ProductID, ProductName, and the total value of units on order for each product. The total value is the UnitsOnOrder multiplied by the UnitPrice. Rename the columns appropriately. 

Select ProductID              AS [Product ID],
       ProductName            AS [Product Name],
	   UnitsOnOrder*UnitPrice AS [Value of Units on Order]
From   Products