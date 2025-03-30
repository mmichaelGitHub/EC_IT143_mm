
-- Create the UserDetailsTable
CREATE TABLE UserDetailsTable (
    UserID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    CreatedDate DATETIME
);

-- Insert 20 Sample Data into UserDetailsTable
INSERT INTO UserDetailsTable (UserID, FirstName, LastName, CreatedDate)
VALUES
(1, 'Alice', 'Johnson', '2025-03-01'),
(2, 'Bob', 'Smith', '2025-03-02'),
(3, 'Charlie', 'Brown', '2025-03-03'),
(4, 'David', 'Wilson', '2025-03-04'),
(5, 'Ella', 'Martinez', '2025-03-05'),
(6, 'Frank', 'Anderson', '2025-03-06'),
(7, 'Grace', 'Thomas', '2025-03-07'),
(8, 'Henry', 'White', '2025-03-08'),
(9, 'Isabella', 'Harris', '2025-03-09'),
(10, 'Jack', 'Clark', '2025-03-10'),
(11, 'Katherine', 'Lewis', '2025-03-11'),
(12, 'Liam', 'Walker', '2025-03-12'),
(13, 'Mia', 'Young', '2025-03-13'),
(14, 'Noah', 'Hall', '2025-03-14'),
(15, 'Olivia', 'Allen', '2025-03-15'),
(16, 'Paul', 'King', '2025-03-16'),
(17, 'Quinn', 'Wright', '2025-03-17'),
(18, 'Ryan', 'Scott', '2025-03-18'),
(19, 'Sophia', 'Green', '2025-03-19'),
(20, 'Tyler', 'Baker', '2025-03-20');

-- Verify Data
SELECT * FROM UserDetailsTable;
