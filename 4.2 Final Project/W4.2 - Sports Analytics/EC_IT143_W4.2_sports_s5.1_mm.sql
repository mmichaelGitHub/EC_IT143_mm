
-- Step 5.1: Create a table from the view data
SELECT Club, PlayerCount
INTO PlayerCountByClubTable
FROM vw_PlayerCountByClub;