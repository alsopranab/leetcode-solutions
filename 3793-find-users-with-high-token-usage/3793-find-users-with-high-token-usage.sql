# Write your MySQL query statement below

WITH user_stats AS (
    SELECT
        user_id,
        COUNT(*) AS prompt_count,
        ROUND(AVG(tokens), 2) AS avg_tokens
    FROM prompts
    GROUP BY user_id
    HAVING COUNT(*) >= 3
)
SELECT
    us.user_id,
    us.prompt_count,
    us.avg_tokens
FROM user_stats us
JOIN prompts p
    ON us.user_id = p.user_id
WHERE p.tokens > us.avg_tokens
GROUP BY us.user_id, us.prompt_count, us.avg_tokens
ORDER BY us.avg_tokens DESC, us.user_id ASC;

