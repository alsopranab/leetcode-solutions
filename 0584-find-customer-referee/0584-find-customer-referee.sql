# prb: find the customer - who is refereed by no one and also the who is referred by 2

select name
from customer c
where referee_id  is null or referee_id  !=2;