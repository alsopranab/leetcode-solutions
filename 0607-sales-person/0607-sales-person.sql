#how to find a the sales person who havent sold anything to the company called RED

# best approach by using "not"

#first thing first.

/* using */ select s.name       /* selecting the name from the salesperson table*/
from salesperson s
where s.sales_id not in         /* using "NOT IN" in so that we can select the salesperson
                                who actually sold the product and we can actually remove them during this process */
         
            ( select sales_id   /* selecting the company*/
            from Orders o
            inner join Company c
                on o.com_id = c.com_id
                where name = 'RED')
;

# thats all.

