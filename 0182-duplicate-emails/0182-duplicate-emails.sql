SELECT DISTINCT email
FROM (
    SELECT 
        email,
        COUNT(*) OVER (PARTITION BY email) AS cnt
    FROM Person
) x
WHERE cnt > 1;
