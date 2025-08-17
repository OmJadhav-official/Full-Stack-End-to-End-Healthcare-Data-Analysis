USE healthcare;

-- 1. Doctor-wise visit count
SELECT doctor_id, COUNT(*) AS visit_count
FROM visit
GROUP BY doctor_id
ORDER BY visit_count DESC;

-- 2. Top 5 patients with most visits
SELECT patient_id, COUNT(*) AS visit_count
FROM visit
GROUP BY patient_id
ORDER BY visit_count DESC
LIMIT 5;

-- 3. Monthly visit trend for 2024
SELECT MONTH(visit_date) AS month, COUNT(*) AS total_visits
FROM visit
WHERE YEAR(visit_date) = 2024
GROUP BY MONTH(visit_date)
ORDER BY month;

-- 4. Average number of lab tests per visit
SELECT AVG(lab_test_count) AS avg_lab_tests_per_visit
FROM (
    SELECT visit_id, COUNT(*) AS lab_test_count
    FROM lab_result
    GROUP BY visit_id
) AS visit_lab_counts;

-- 5. Total treatment cost per patient
SELECT Treatment_ID, SUM(treatment_cost) AS total_treatment_cost
FROM treatments
GROUP BY Treatment_ID
ORDER BY total_treatment_cost DESC;

-- 6. Patients with most expensive treatment
SELECT Treatment_ID, treatment_id, treatment_cost
FROM treatments
ORDER BY treatment_cost DESC
LIMIT 5;