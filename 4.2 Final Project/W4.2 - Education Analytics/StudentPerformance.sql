
-- Creating the Table StudentPerformance
CREATE TABLE StudentPerformance (
    StudentID INT PRIMARY KEY,  -- Unique ID for each student
    FirstName VARCHAR(50),      -- First name of the student
    LastName VARCHAR(50),       -- Last name of the student
    GPA DECIMAL(3, 2),          -- GPA of the student (e.g., 3.75)
    Age INT,                    -- Age of the student
    Gender VARCHAR(10),         -- Gender of the student
    GradeLevel VARCHAR(20)      -- Grade level (e.g., '9th', '10th', '11th', '12th')
);