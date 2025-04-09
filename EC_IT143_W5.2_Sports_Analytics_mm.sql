-- My Communities Data Analysis
-- Author: Martin Michael
-- Date: 9-April-2025
-- Data Set: Sports Analytics
--
-- Question 1: How many players are in each club? (Author: Martin Michael)
-- Question 2: What is the average player age in each club? (Author: Martin Michael)
-- Question 3: How does player position correlate with performance? (Author: Francis Nyuma)
-- Question 4: Which club has the most players from a specific country? (Author: Martin Michael)

USE EC_IT143_DA;
GO

-- Question 1
SELECT ClubName, COUNT(PlayerID) AS Num_Players
FROM FIFA19_Players_Old
GROUP BY ClubName
ORDER BY num_players DESC;

-- Question 2
SELECT ClubName, AVG(Age) AS Avg_Age
FROM FIFA19_Players_Old
GROUP BY ClubName;

-- Question 3
SELECT Position, AVG(OverallRating) AS Avg_Rating
FROM FIFA19_Players_Old
GROUP BY Position;

-- Question 4
SELECT ClubName, Nationality, COUNT(*) AS Players_From_Country
FROM FIFA19_Players_Old
GROUP BY ClubName, Nationality
ORDER BY players_from_country DESC;

