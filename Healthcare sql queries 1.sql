USE Healthcare;

#total doctors-----
SELECT COUNT(doctor_id) AS total_doctors
FROM doctor;

# total visits----
SELECT COUNT(Visit_ID) AS total_visits
FROM Visit;

#total visits in 2024----
SELECT COUNT(Visit_ID) AS total_visits_2024
FROM Visit
WHERE YEAR(Visit_Date) = 2024;

#avg age of patients---
SELECT AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())) AS average_age
FROM patient;

#total lab tests conducted---
SELECT COUNT(Lab_Result_ID)
 AS total_lab_tests
FROM Lab_Result;

#Average Treatment Cost Per Visit---
SELECT AVG(Treatment_Cost) AS average_treatment_cost
FROM Treatments;

#abnormal lab results---
SELECT 
  (COUNT(CASE WHEN Test_Result = 'Abnormal' THEN 1 END) * 100.0 / COUNT(Lab_Result_ID))
  AS abnormal_rate_percentage
FROM Lab_Result;

#avg patients per doctor---
SELECT 
  (SELECT COUNT(Visit_ID) FROM Visit) * 1.0 / 
  (SELECT COUNT(doctor_id) FROM doctor) AS avg_patients_per_doctor;

