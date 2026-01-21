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
        MIN(c2.test_date),
        MIN(c1.test_date)
    ) AS recovery_time
FROM covid_tests c1
JOIN covid_tests c2
    ON c1.patient_id = c2.patient_id
    AND c1.test_date < c2.test_date
    AND c1.result = 'Positive'
    AND c2.result = 'Negative'
JOIN patients p
    ON c1.patient_id = p.patient_id
GROUP BY
    p.patient_id,
    p.patient_name,
    p.age
ORDER BY
    recovery_time,
    p.patient_name;