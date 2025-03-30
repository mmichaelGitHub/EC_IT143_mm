
-- Step 7: Turn the ad hoc SQL script into a stored procedure

-- Create a stored procedure to load data into PlayerCountByClub_Table from the view

CREATE PROCEDURE sp_LoadPlayerCountByClubData
AS
BEGIN
    -- Truncate the table to remove any existing data (if necessary)
    TRUNCATE TABLE PlayerCountByClub_Table;

    -- Insert data from the view into the table
    INSERT INTO PlayerCountByClub_Table (Club, PlayerCount)
    SELECT Club, PlayerCount
    FROM vw_PlayerCountByClub;

    -- Optional: Return a success message or row count
    SELECT 'Data has been successfully loaded into the table' AS StatusMessage;
END;
