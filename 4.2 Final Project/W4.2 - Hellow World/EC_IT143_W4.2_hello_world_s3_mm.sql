
-- What is the simplest question? 
-- Example: "What is the current date and time?"

SELECT GETDATE() AS CurrentDateTime;

-- First attempt at answering the question

DECLARE @Today DATETIME;
SET @Today = GETDATE();
SELECT @Today AS CurrentDateTime;