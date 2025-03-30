
-- Creating a view for user creation details

CREATE VIEW vw_UserDetails AS 
SELECT UserID, FirstName, LastName, CreatedDate 
FROM Users;
