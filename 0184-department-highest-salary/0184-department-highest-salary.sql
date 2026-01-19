# Write your MySQL query statement below

Select D.name AS department,
 e.name as Employee,
 e.salary

From Employee e
join Department d on e.departmentId=d.id

Where e.salary = (
    select max(e2.salary)
    from Employee e2
    Where e2.DepartmentId = e.DepartmentId
    );
