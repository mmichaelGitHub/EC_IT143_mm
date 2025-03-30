
-- Step 6: Load the table from the view using an ad hoc SQL script

-- Truncate the table to remove any existing data (if necessary)
TRUNCATE TABLE PlayerCountByClub_Table;

-- Insert data from the view into the table
INSERT INTO PlayerCountByClub_Table (Club, PlayerCount)
SELECT Club, PlayerCount
FROM vw_PlayerCountByClub;
