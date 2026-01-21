# Write your MySQL query statement below

/* 
Find each patient’s first positive COVID test date.
Identify the first negative test date that occurs after this positive test for the same patient.
Join the results with the patients table to get patient details.
Calculate recovery time using the difference between the positive and negative dates.
Sort the output by recovery time and patient name.
*/

WITH first_positive AS (
    SELECT
        patient_id,
        MIN(test_date) AS first_positive_date
    FROM covid_tests
    WHERE result = 'Positive'
    GROUP BY patient_id
),
first_negative_after_positive AS (
    SELECT
        c.patient_id,
        MIN(c.test_date) AS first_negative_date
    FROM covid_tests c
    JOIN first_positive fp
        ON c.patient_id = fp.patient_id
        AND c.test_date > fp.first_positive_date
    WHERE c.result = 'Negative'
    GROUP BY c.patient_id
)
SELECT
    p.patient_id,
    p.patient_name,
    p.age,
    DATEDIFF(fn.first_negative_date, fp.first_positive_date) AS recovery_time
FROM patients p
JOIN first_positive fp
    ON p.patient_id = fp.patient_id
JOIN first_negative_after_positive fn
    ON p.patient_id = fn.patient_id
ORDER BY
    recovery_time,
    p.patient_name;

