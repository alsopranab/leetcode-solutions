# Write your MySQL query statement below

/* Join the tables
compare the salary against the dept*/

-- Lets start

Select
        d.name as Department,
        e.name as Employee,
        e.Salary
From Employee e -- to check one employee
Join Department as d
on e.departmentId=d.id

Where e.salary = (
    Select max(e2.salary)
    From Employee e2 -- to comare all employees
    Where e.departmentid=e2.departmentId -- but against their resp. department
);