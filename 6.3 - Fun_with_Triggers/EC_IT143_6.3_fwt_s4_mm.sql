
-- =============================================
-- Author: Martin Michael
-- Created date: 2025-04-12
-- Description: Updates LastModifiedDate and LastModifiedBy after a record update
-- =============================================
CREATE TRIGGER trg_UpdateModificationInfo
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE c
    SET 
        c.LastModifiedDate = GETDATE(),
        c.LastModifiedBy = SUSER_SNAME()  -- Or use SYSTEM_USER
    FROM dbo.t_w3_schools_customers c
    INNER JOIN inserted i ON c.CustomerID = i.CustomerID;
END;
GO
