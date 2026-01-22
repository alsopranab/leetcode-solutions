# Write your MySQL query statement below

Select
        d.name as Department,
        e.name as Employee,
        e.Salary
From Employee e
Join Department d
On e.departmentId=d.id

Where e.salary = (
    select max(e2.salary)
    from employee e2
    where e.departmentid=e2.departmentid
);