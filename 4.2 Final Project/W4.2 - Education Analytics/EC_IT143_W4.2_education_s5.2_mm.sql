
DROP TABLE IF EXISTS AvgGPA_Table;

CREATE TABLE AvgGPA_Table (
    GPA_ID INT IDENTITY(1,1) PRIMARY KEY,  -- New ID for better tracking (optional)
    AverageGPA DECIMAL(4, 2) NOT NULL,
    DateCalculated DATETIME DEFAULT GETDATE() NOT NULL
);

INSERT INTO AvgGPA_Table (AverageGPA)
SELECT AVG(GPA) AS AverageGPA
FROM StudentPerformance;
