
-- Create Users Table
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    CreatedDate DATETIME DEFAULT GETDATE()
);

-- Insert Sample Data
INSERT INTO Users (FirstName, LastName)
VALUES 
('Alice', 'Johnson'),
('Bob', 'Smith'),
('Charlie', 'Brown'),
('David', 'Wilson'),
('Ella', 'Martinez'),
('Frank', 'Anderson'),
('Grace', 'Thomas'),
('Henry', 'White'),
('Isabella', 'Harris'),
('Jack', 'Clark'),
('Katherine', 'Lewis'),
('Liam', 'Walker'),
('Mia', 'Young'),
('Noah', 'Hall'),
('Olivia', 'Allen'),
('Paul', 'King'),
('Quinn', 'Wright'),
('Ryan', 'Scott'),
('Sophia', 'Green'),
('Tyler', 'Baker');

-- Verify Data
SELECT * FROM Users;
