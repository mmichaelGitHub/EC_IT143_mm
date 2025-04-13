
-- Step 1: Alter the table to add tracking columns. Already added LastModifiedDate to the table.
ALTER TABLE dbo.t_w3_schools_customers
ADD LastModifiedDate DATETIME NULL,
    LastModifiedBy NVARCHAR(100) NULL;

	-- Research and test a solution. Test update plan.