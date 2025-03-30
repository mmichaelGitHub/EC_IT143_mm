
-- Creating a stored procedure to load data
CREATE PROCEDURE sp_LoadUserDetails 
AS 
BEGIN 
    TRUNCATE TABLE UserDetailsTable;
    INSERT INTO UserDetailsTable (UserID, FirstName, LastName, CreatedDate)
    SELECT UserID, FirstName, LastName, CreatedDate FROM vw_UserDetails;
END;
