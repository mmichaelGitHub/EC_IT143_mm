
-- =============================================
-- Author: Martin Michael
-- Create date: 2025-04-12
-- Description: Extracts first name from "Last, First" formatted name
-- =============================================
CREATE FUNCTION dbo.udf_GetFirstName (@ContactName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LTRIM(RTRIM(SUBSTRING(@ContactName, CHARINDEX(',', @ContactName) + 1, LEN(@ContactName))))
END;
GO
