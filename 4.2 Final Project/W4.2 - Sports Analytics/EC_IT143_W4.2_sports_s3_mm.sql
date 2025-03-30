
-- Step 3: Ad hoc SQL query to count players in each club
SELECT Club, COUNT(PlayerID) AS PlayerCount
FROM FIFA19_Players
GROUP BY Club
ORDER BY PlayerCount DESC;

