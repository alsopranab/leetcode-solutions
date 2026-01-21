# Write your MySQL query statement below

/* 
Find each patient’s first positive COVID test date.
Identify the first negative test date that occurs after this positive test for the same patient.
Join the results with the patients table to get patient details.
Calculate recovery time using the difference between the positive and negative dates.
Sort the output by recovery time and patient name.
*/

SELECT
    p.patient_id,
    p.patient_name,
    p.age,
    DATEDIFF(
        MIN(CASE WHEN c2.result = 'Negative' THEN c2.test_date END),
        MIN(CASE WHEN c1.result = 'Positive' THEN c1.test_date END)
    ) AS recovery_time
FROM patients p
JOIN covid_tests c1
    ON p.patient_id = c1.patient_id
JOIN covid_tests c2
    ON p.patient_id = c2.patient_id
    AND c2.test_date > c1.test_date
WHERE c1.result = 'Positive'
GROUP BY
    p.patient_id,
    p.patient_name,
    p.age
HAVING
    COUNT(CASE WHEN c2.result = 'Negative' THEN 1 END) > 0
ORDER BY
    recovery_time,
    p.patient_name;
