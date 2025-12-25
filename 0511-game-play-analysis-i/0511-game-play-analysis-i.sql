# Write your MySQL query statement below


/*# Prob: 
-- find the first login means the minimum date
-- then group the player id so that we can get the data /user
*/
select player_id, MIN(event_date) as first_login
from Activity
group by player_id;