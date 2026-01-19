# Write your MySQL query statement below


Select
        d.name as Department,
        e.name as Employee,
        e.Salary
From Employee as e
Join Department as d
        on e.DepartmentId = d.id
Where e.salary = (
    Select max(e2.Salary)
    From Employee e2
    Where e2.DepartmentId=e.DepartmentID
);