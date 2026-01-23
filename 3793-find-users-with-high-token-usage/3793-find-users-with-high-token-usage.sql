# Write your MySQL query statement below

SELECT
    p.user_id,
    COUNT(*) AS prompt_count,
    ROUND(AVG(p.tokens), 2) AS avg_tokens
FROM prompts p
GROUP BY p.user_id
HAVING
    COUNT(*) >= 3
    AND MAX(p.tokens) > ROUND(AVG(p.tokens), 2)
ORDER BY avg_tokens DESC, p.user_id ASC;


