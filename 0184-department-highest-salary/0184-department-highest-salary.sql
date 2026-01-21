# Write your MySQL query statement below


Select
        d.name as Department,
        e.name as Employee,
        e.Salary

From Employee e
Join Department d
        on e.DepartmentId = d.id

        Where e.salary = (
            Select Max(e2.salary)
            From Employee e2
            Where e2.DepartmentId = e.DepartmentId
        );