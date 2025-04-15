
-- W6.4 Performance Analysis: Missing Index Recommendations
-- Author: Martin Michael
-- Date: 15-April-2025
-- Description: Two queries that generate missing index suggestions and their respective CREATE INDEX implementations.

------------------------------------------------------------------------------------
-- Query 1: Find records in Person.Person table using a non-indexed character column
-- Purpose: Generate a missing index recommendation
------------------------------------------------------------------------------------
-- Step 1: Enable actual execution plan in SSMS before running

USE AdventureWorks2022;
GO

SELECT * 
FROM Person.Person
WHERE Title = 'Mr.';

----------------------------------------------------------------------------------
-- Step 2: Review execution plan for missing index recommendation and subtree cost
-- Step 3: Use the recommendation to create an index
----------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX IX_Person_Title
ON Person.Person (Title);

----------------------------------------------------------------------------------
-- Step 4: Re-run the query to compare performance improvements
----------------------------------------------------------------------------------

SELECT * 
FROM Person.Person
WHERE Title = 'Mr.';

-------------------------------------------------------------------------------------------
-- Query 2: Target another table, e.g., Sales.Customer using a non-indexed character column
-------------------------------------------------------------------------------------------

SELECT * 
FROM Sales.Customer
WHERE AccountNumber = 'AW00000003';

-------------------------------------------------------------------------------------------
-- Expected: SQL Server may recommend an index on AccountNumber
-- Add missing index if suggested
-------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX IX_Customer_AccountNumber
ON Sales.Customer (AccountNumber);

-------------------------------------------------------------------------------------------
-- Re-run to observe changes in runtime and subtree cost
-------------------------------------------------------------------------------------------

SELECT * 
FROM Sales.Customer
WHERE AccountNumber = 'AW00000003';

