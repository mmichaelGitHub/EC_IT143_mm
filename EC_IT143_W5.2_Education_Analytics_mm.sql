-- My Communities Data Analysis
-- Author: Martin Michael
-- Date: 9-April-2025
-- Data Set: Education Analytics
--
-- Question 1: What is the average GPA for each student? (Author: Martin Michael)
-- Question 2: How does GPA correlate with parental involvement? (Author: Martin Michael)
-- Question 3: What is the distribution of study habits among students? (Author: Marianne Tchoffo Douanla)
-- Question 4: What are the most common demographics among students? (Author: Martin Michael)

-- Question 1
SELECT student_id, AVG(GPA) AS average_gpa
FROM gpa_history
GROUP BY student_id;

-- Question 2
SELECT parental_involvement_level, AVG(GPA) AS avg_gpa
FROM gpa_history
GROUP BY parental_involvement_level;

-- Question 3
SELECT study_habit_category, COUNT(*) AS student_count
FROM gpa_history
GROUP BY study_habit_category;

-- Question 4
SELECT gender, age_group, COUNT(*) AS demographic_count
FROM gpa_history
GROUP BY gender, age_group
ORDER BY demographic_count DESC;


