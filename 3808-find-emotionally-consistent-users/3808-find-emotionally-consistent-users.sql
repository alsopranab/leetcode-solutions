# Write your MySQL query statement below

WITH c AS (
    SELECT
        user_id,
        reaction,
        COUNT(*) AS cnt
    FROM reactions
    GROUP BY user_id, reaction
),
t AS (
    SELECT
        user_id,
        COUNT(*) AS total
    FROM reactions
    GROUP BY user_id
    HAVING COUNT(*) >= 5
),
r AS (
    SELECT
        c.user_id,
        c.reaction,
        c.cnt,
        t.total,
        ROW_NUMBER() OVER (
            PARTITION BY c.user_id
            ORDER BY c.cnt DESC
        ) AS rn
    FROM c
    JOIN t ON c.user_id = t.user_id
)
SELECT
    user_id,
    reaction AS dominant_reaction,
    ROUND(cnt / total, 2) AS reaction_ratio
FROM r
WHERE rn = 1
  AND cnt / total >= 0.6
ORDER BY reaction_ratio DESC, user_id ASC;


