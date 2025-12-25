# Write your MySQL query statement below
SELECT name
FROM salesperson sp
WHERE sp.sales_id
NOT IN (
    SELECT sales_id
    FROM Company c
    INNER JOIN Orders O
    ON o.com_id=c.com_id
    WHERE c.name='RED'
);