# Write your MySQL query statement below

Select d.name as Department
e.name as Employee
e.Salary

from Employee e
join department d
on e.departmentid= d.id
where e.salary =(
    select max(e2.salary)
    from employee e2
    where e2.departmentid=e.departmentid
);