# Write your MySQL query statement below

Select
    d.name AS Department,
    e.name AS Employee,
    e.salary
From Employee e
join Department d
    on d.id = e.departmentId
Where e.salary = 
                (select
                max(e2.salary)
                from employee e2
                where e2.departmentId = e.departmentId
                );