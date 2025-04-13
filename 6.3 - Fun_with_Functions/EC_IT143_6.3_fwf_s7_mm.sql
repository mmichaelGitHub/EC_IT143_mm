
WITH cte AS (
    SELECT ContactName,
           dbo.udf_GetFirstName(ContactName) AS FirstName_UDF,
           LTRIM(RTRIM(SUBSTRING(ContactName, CHARINDEX(',', ContactName) + 1, LEN(ContactName)))) AS FirstName_AdHoc
    FROM dbo.t_w3_schools_customers
)
SELECT *
FROM cte
WHERE FirstName_UDF <> FirstName_AdHoc;
-- Expecting 0 results if the function works correctly
