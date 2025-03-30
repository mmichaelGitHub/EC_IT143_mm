
CREATE VIEW AvgGPAView AS
SELECT AVG(GPA) AS AverageGPA
FROM StudentPerformance;


-- Once this view is created, you can easily retrieve the average GPA by simply querying the view:
-- SELECT * FROM AvgGPAView;