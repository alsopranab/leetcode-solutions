# Write your MySQL query statement below


Select
    d.name as department,
    e.name as employee,
    e.salary

        From Employee e
        Join Department d
        on e.DepartmentID=d.id
    Where e.salary= (
        Select max(e2.Salary)
        from employee e2
        where e2.DepartmentID=e.DepartmentID
    );