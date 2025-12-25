#how to find a the sales person who havent sold anything to the company called RED

# best approach by using "not"

#first thing first.

/* using */ select s.name
from salesperson s
where s.sales_id not in
            ( select sales_id
            from Orders o
            inner join Company c
                on o.com_id = c.com_id
                where name = 'RED'
            );
