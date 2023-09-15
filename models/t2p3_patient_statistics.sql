-- Define a DBT model to calculate patient statistics

WITH PatientStats AS (
  SELECT
    Patient_ID,
    COUNT(*) AS Total_Patients,
    AVG(Age) AS Average_Age,
    MAX(Age) AS Max_Age,
    MIN(Age) AS Min_Age,
    COUNT(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_Count,
    COUNT(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_Count
  FROM
    patient_data
  GROUP BY
    Patient_ID
)

-- Select the calculated statistics
SELECT
  Patient_ID,
  Total_Patients,
  Average_Age,
  Max_Age,
  Min_Age,
  Male_Count,
  Female_Count
FROM
  PatientStats