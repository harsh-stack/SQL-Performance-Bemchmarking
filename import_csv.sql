LOAD DATA LOCAL INFILE 'D:/UMassD_3rd_Semester/Database_Design/ProjectFiles/salary_tracker_1MB.csv'
INTO TABLE salary_raw
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/UMassD_3rd_Semester/Database_Design/ProjectFiles/salary_tracker_10MB.csv'
INTO TABLE salary_raw
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/UMassD_3rd_Semester/Database_Design/ProjectFiles/salary_tracker_100MB.csv'
INTO TABLE salary_raw
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;