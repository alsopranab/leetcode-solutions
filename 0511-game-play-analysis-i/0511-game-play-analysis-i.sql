# Write your MySQL query statement below
/*SELECT player_id,
       MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;*/

-- you can use this function but also I would recom. you to use the window functions.

SELECT player_id, event_date AS first_login
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS rn
    FROM Activity
) x
WHERE rn = 1;