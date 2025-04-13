
-- Run an UPDATE on any row
UPDATE dbo.t_w3_schools_customers
SET ContactTitle = 'Updated Title'
WHERE CustomerID = 1;

-- Check results
SELECT CustomerID, ContactTitle, LastModifiedDate, LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;