-- *******************Question 1****************************
-- Create data base and import tables
CREATE DATABASE IF NOT EXISTS insurance_analysis;
USE insurance_analysis;
-- determine type of data in each column (hospitalisation_details)
DESC hospitalisation_details;
-- Remove null columns from hospitalisation_detail
SET SQL_SAFE_UPDATES = 0;
DELETE FROM hospitalisation_details
WHERE (`Customer ID` IS NULL OR `Customer ID` = '?' OR `Customer ID` = ' ') OR 
	(year IS NULL OR year = 0) OR
    (month IS NULL OR month = '?' OR `Customer ID` = ' ') OR
    (date IS NULL OR date = 0) OR
	(children IS NULL) OR 
    (charges IS NULL OR charges = 0 ) OR
    (`hospital tier` IS NULL OR `hospital tier` = '?' OR `Customer ID` = ' ') OR 
    (`city tier` IS NULL OR `city tier` = '?' OR `Customer ID` = ' ') OR 
    (`State ID` IS NULL OR `State ID` = '?' OR `Customer ID` = ' ')
;
-- determine type of data in each column (medical_examinations)
DESC medical_examinations;
-- Remove null columns from medical_examinations
DELETE FROM medical_examinations
WHERE (`Customer ID` IS NULL OR `Customer ID` = '?' OR `Customer ID` = ' ') OR 
	(BMI IS NULL OR BMI = 0) OR
    (HBA1C IS NULL OR HBA1C = 0) OR
    (`Heart Issues` IS NULL OR `Heart Issues` = '?' OR `Heart Issues` = ' ') OR
    (`Any Transplants` IS NULL OR `Any Transplants` = '?' OR `Any Transplants` = ' ') OR
    (`Cancer history` IS NULL OR `Cancer history` = '?' OR `Cancer history` = ' ') OR
    (NumberOfMajorSurgeries IS NULL OR NumberOfMajorSurgeries = '?' OR NumberOfMajorSurgeries = ' ') OR
    (smoker IS NULL OR smoker = '?' OR smoker = ' ')
;
-- Remove null columns from name
DELETE FROM names
WHERE (`Customer ID` IS NULL OR `Customer ID` = '?' OR `Customer ID` = ' ') OR
      (name IS NULL OR name = '?' OR name = ' ')
;
-- Check for duplicated rows in hospitalisation_details 
SELECT COUNT(DISTINCT `Customer ID`) FROM hospitalisation_details;
SELECT COUNT( `Customer ID`) FROM hospitalisation_details;
-- Since both above queries have the same value >> No duplicated rows in hospitalisation_details
-- Check for duplicated rows in medical_examinations 
SELECT COUNT(DISTINCT `Customer ID`) FROM medical_examinations;
SELECT COUNT( `Customer ID`) FROM medical_examinations;
-- Since both above queries have the same value >> No duplicated rows in medical_examinations
-- Check for duplicated rows in names
SELECT COUNT(DISTINCT `Customer ID`) FROM names;
SELECT COUNT( `Customer ID`) FROM names;
-- Since both above queries have the same value >> No duplicated rows in names
-- add primary key for the table (hospitalisation_details)
ALTER TABLE hospitalisation_details 
MODIFY `Customer ID` VARCHAR(50);
ALTER TABLE hospitalisation_details
ADD PRIMARY KEY (`Customer ID`);
-- add primary key for the table (medical_examinations)
ALTER TABLE medical_examinations 
MODIFY `Customer ID` VARCHAR(50);
ALTER TABLE medical_examinations
ADD PRIMARY KEY (`Customer ID`);
-- add primary key for the table (names)
ALTER TABLE names 
MODIFY `Customer ID` VARCHAR(50);
ALTER TABLE names
ADD PRIMARY KEY (`Customer ID`);
-- ******************* Merging tables (hospitalization_details and medical_examinations) ****************************
CREATE TABLE IF NOT EXISTS hosp_med 
SELECT  
hosp_det.`Customer ID`,
hosp_det.year,
hosp_det.month,
hosp_det.date,
hosp_det.children,
hosp_det.charges,
hosp_det.`Hospital tier`,
hosp_det.`City tier`,
hosp_det.`State ID`,
med_exam.BMI,
med_exam.`HBA1C`,
med_exam.`Heart Issues`,
med_exam.`Any Transplants`,
med_exam.`Cancer history`,
med_exam.`NumberOfMajorSurgeries`,
med_exam.smoker
FROM hospitalisation_details AS hosp_det
LEFT JOIN 
medical_examinations AS med_exam
on 
hosp_det.`Customer ID` = med_exam.`Customer ID`;
-- *********** Question2 ************
SELECT 
round(AVG (2025-hosp_med.year), 2) AS `Average age`, 
round(AVG (hosp_med.children), 2) AS `Average number of Children`,
round(AVG (hosp_med.BMI), 2) AS `Average BMI`,
round(AVG (hosp_med.charges), 2) AS `Average Hospitalization costs`
FROM hosp_med 
WHERE HBA1C > 6.5 and `Heart Issues`='yes'; 
-- *********** Question3 ************
SELECT `Hospital tier`, round(AVG(charges), 2) AS `Average hospitalization cost` FROM hosp_med
GROUP BY `Hospital tier`;
SELECT `City tier`, round(AVG(charges), 2) AS `Average hospitalization cost` FROM hosp_med
GROUP BY `City tier`;
-- *********** Question4 ************
SELECT COUNT(*) AS `Number of people with having histry of major surgery and cancer `FROM hosp_med 
WHERE NumberOfMajorSurgeries <> 'No major surgery' and 
`Cancer history` <> 'No';
-- *********** Question5 ************
SELECT `State ID` , COUNT(`Hospital tier`) AS `Number of tier - 1 hospitals` FROM hosp_med
WhERE `Hospital tier` = 'tier - 1'
GROUP BY `State ID`
ORDER BY `Number of tier - 1 hospitals` DESC;

