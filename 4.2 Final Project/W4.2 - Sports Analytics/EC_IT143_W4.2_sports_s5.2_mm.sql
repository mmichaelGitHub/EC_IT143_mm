
-- Step 5.2: Refine table architecture for PlayerCountByClub_Table
-- Drop the table if it exists
IF OBJECT_ID('PlayerCountByClub_Table', 'U') IS NOT NULL
    DROP TABLE PlayerCountByClub_Table;

-- Re-create the table with refined structure
CREATE TABLE PlayerCountByClub_Table (
    Club VARCHAR(255) NOT NULL,          -- Refined Club column to VARCHAR, with a constraint of NOT NULL
    PlayerCount INT NOT NULL,            -- PlayerCount as INT, since it's a numeric value
    CONSTRAINT PK_PlayerCountByClub PRIMARY KEY (Club)  -- Primary Key based on Club (assuming each club is unique)
);

-- Insert data from the view into the newly created table
INSERT INTO PlayerCountByClub_Table (Club, PlayerCount)
SELECT Club, PlayerCount
FROM vw_PlayerCountByClub;
