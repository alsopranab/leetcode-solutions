# Write your MySQL query statement below

/* SELECT 
     (SELECT DISTINCT Salary
     FROM Employee
     ORDER BY Salary
     LIMIT 1 OFFSET 1)
     AS SecondHighestSalary
;*/

SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE salary <(
    Select Max(salary)
    From Employee
);