-- 1. Unique PersonNames + BirthDates
SELECT DISTINCT PersonName, BirthDate FROM salary_raw;

-- 2. Actively working people with School info
SELECT PersonName, SchoolName, SchoolCampus
FROM salary_raw
WHERE StillWorking = TRUE;

-- 3. Assistant Professors at UMass Dartmouth
SELECT PersonName
FROM salary_raw
WHERE JobTitle = 'Assistant Professor'
  AND SchoolName = 'UMass Dartmouth';

-- 4. Count people per campus (latest year)
SELECT SchoolCampus, COUNT(DISTINCT PersonID)
FROM salary_raw
WHERE EarningsYear = (SELECT MAX(EarningsYear) FROM salary_raw)
GROUP BY SchoolCampus;

-- 5. Total earnings per person
SELECT PersonID, SUM(Earnings) AS TotalEarnings
FROM salary_raw
GROUP BY PersonID;