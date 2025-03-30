
-- Refreshing table data
TRUNCATE TABLE UserDetailsTable;

INSERT INTO UserDetailsTable (UserID, FirstName, LastName, CreatedDate)
SELECT UserID, FirstName, LastName, CreatedDate FROM vw_UserDetails;
