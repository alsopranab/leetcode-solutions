# Write your MySQL query statement below
SELECT Score, dense_rank() OVER(ORDER BY score DESC) as "rank"
FROM Scores;