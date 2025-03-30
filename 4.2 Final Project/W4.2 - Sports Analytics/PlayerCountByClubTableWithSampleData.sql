
-- Create a table with sample data directly
SELECT 'FC Barcelona' AS Club, 25 AS PlayerCount
UNION ALL
SELECT 'Real Madrid', 27
UNION ALL
SELECT 'Manchester United', 22
UNION ALL
SELECT 'Bayern Munich', 23
UNION ALL
SELECT 'Juventus', 20
UNION ALL
SELECT 'Paris Saint-Germain', 18
UNION ALL
SELECT 'Liverpool', 26
INTO PlayerCountByClubTable;
