# Write your MySQL query statement below

SELECT
    p.product_id,
    p.product_name
FROM product p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY
    p.product_id,
    p.product_name
HAVING
    -- Ensure the product has no sales before the start date
    MIN(s.sale_date) >= '2019-01-01'
    AND
    -- Ensure the product has no sales after the end date
    MAX(s.sale_date) <= '2019-03-31';



