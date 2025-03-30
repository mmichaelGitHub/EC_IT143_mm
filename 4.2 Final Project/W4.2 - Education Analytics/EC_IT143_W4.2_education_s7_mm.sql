
CREATE PROCEDURE UpdateAvgGPA
AS
BEGIN
    -- Step 1: Truncate the table to remove previous data
    TRUNCATE TABLE AvgGPA_Table;

    -- Step 2: Insert the new data (Average GPA) from the StudentPerformance table
    INSERT INTO AvgGPA_Table (AverageGPA)
    SELECT AVG(GPA) AS AverageGPA
    FROM StudentPerformance;
END;
