# Write your MySQL query statement below

SELECT U.user_id AS buyer_id, U.join_date, COUNT(O.order_date) AS orders_in_2019
FROM Users U
LEFT JOIN Orders O on u.user_id=o.buyer_id AND YEAR (O.order_date) = 2019
GROUP by u.user_id;
