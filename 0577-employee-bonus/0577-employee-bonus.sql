# obj:

/* to find the emp who received b<1000 or nothing (null)


*/

#solution
select e.name, b.bonus
    from employee e
    left join bonus b
        on e.empId=b.empId
where b.bonus < 1000
    or b.bonus is null;