
-- Step 4: Create a view to count players in each club
CREATE VIEW vw_PlayerCountByClub AS
SELECT Club, COUNT(PlayerID) AS PlayerCount
FROM FIFA19_Players
GROUP BY Club
ORDER BY PlayerCount DESC;
