# Write your MySQL query statement below

Select 
        D.Name as Department,
        E.Name as Employee,
        E.Salary

    From Employee as E
    Department as D
    On E.DepartmentId=D.id -- Department wise Employees

-- Dep,Emp,Sal

    Where e.Salary = (
        Select max(e2.Salary)
        From Employee e2
        Where e.DepartmentId=e2.DepartmentId -- We can compare btw same dpt employees
    );

