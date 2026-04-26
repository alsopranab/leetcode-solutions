# Write your MySQL query statement below
Select firstName, lastName, city, state
From Person P
LEFT JOIN Address A on P.personId=A.personId;

