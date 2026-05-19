-- Create Database
CREATE DATABASE CollegeDB;

-- Select Database
USE CollegeDB;

-- Create Table
CREATE TABLE StudentRecords (
    Stud_ID INT PRIMARY KEY AUTO_INCREMENT,
    Stud_Name VARCHAR(50),
    Stud_Gender VARCHAR(10),
    Stud_Age INT,
    Stud_Grade CHAR(1),
    Maths_Marks INT,
    Science_Marks INT,
    English_Marks INT
);

-- Insert Records
INSERT INTO StudentRecords
(Stud_Name, Stud_Gender, Stud_Age, Stud_Grade, Maths_Marks, Science_Marks, English_Marks)
VALUES
('Aakash', 'Male', 18, 'A', 91, 87, 85),
('Keerthana', 'Female', 17, 'B', 76, 80, 79),
('Rohit', 'Male', 18, 'A', 95, 92, 90),
('Nandhini', 'Female', 17, 'C', 68, 70, 73),
('Vignesh', 'Male', 19, 'B', 82, 78, 81),
('Harini', 'Female', 18, 'A', 93, 96, 94),
('Karthik', 'Male', 17, 'C', 62, 65, 60),
('Swathi', 'Female', 18, 'B', 85, 88, 87),
('Dinesh', 'Male', 19, 'A', 98, 97, 95),
('Lavanya', 'Female', 17, 'B', 74, 77, 76);

-- Display All Records
SELECT * FROM StudentRecords;

-- Find Average Marks
SELECT
AVG(Maths_Marks) AS Average_Maths,
AVG(Science_Marks) AS Average_Science,
AVG(English_Marks) AS Average_English
FROM StudentRecords;

-- Find Top Scorer
SELECT *,
(Maths_Marks + Science_Marks + English_Marks) AS Total_Marks
FROM StudentRecords
ORDER BY Total_Marks DESC
LIMIT 1;

-- Count Students Grade Wise
SELECT Stud_Grade,
COUNT(*) AS Student_Count
FROM StudentRecords
GROUP BY Stud_Grade;

-- Average Marks Based on Gender
SELECT Stud_Gender,
AVG(Maths_Marks) AS Avg_Maths,
AVG(Science_Marks) AS Avg_Science,
AVG(English_Marks) AS Avg_English
FROM StudentRecords
GROUP BY Stud_Gender;

-- Students Scoring More Than 80 in Maths
SELECT *
FROM StudentRecords
WHERE Maths_Marks > 80;

-- Update Student Grade
UPDATE StudentRecords
SET Stud_Grade = 'A'
WHERE Stud_ID = 3;

-- View Updated Table
SELECT * FROM StudentRecords;