# Write your MySQL query statement below

SELECT firstname,lastname,city,state
FROM Person
LEFT JOIN Address
USING (personID);


#Different approaches
/* 
SELECT p.firstname,p.lastname,a.city,a.state
FROM Person P
LEFT JOIN Address P
ON P.personID=A.personId;

OR,

SELECT p.firstname,p.lastname,a.city,a.state
FROM Person P
LEFT JOIN Address P
Using(personId);
*/