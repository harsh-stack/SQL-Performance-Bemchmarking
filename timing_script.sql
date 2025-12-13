-- Example timing wrapper in MySQL
SET @start_time = NOW();
-- Run your query here
SELECT COUNT(*) FROM salary_raw;
SET @end_time = NOW();
SELECT TIMEDIFF(@end_time, @start_time) AS ExecutionTime;