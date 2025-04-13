
SELECT ContactName,
       LTRIM(RTRIM(SUBSTRING(ContactName, CHARINDEX(',', ContactName) + 1, LEN(ContactName)))) AS FirstName
FROM dbo.t_w3_schools_customers;
