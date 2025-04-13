
SELECT ContactName,
       dbo.udf_GetFirstName(ContactName) AS FirstName_UDF,
       LTRIM(RTRIM(SUBSTRING(ContactName, CHARINDEX(',', ContactName) + 1, LEN(ContactName)))) AS FirstName_AdHoc
FROM dbo.t_w3_schools_customers;
