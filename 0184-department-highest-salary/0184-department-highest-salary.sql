# Write your MySQL query statement below

/*Approach*/
-- Join the tables
-- Check the salary for each employee
-- then once we join the tables
-- we will comare the salaries for the wholes employees against
-- their resp. dept.

Select 
        d.name as Department,
        e.name as Employee,
        e.Salary

        From employee e -- for one employee
        join department d
        on e.departmentId=d.id

        Where e.salary = (
            Select max(e2.Salary)
            from Employee e2 -- for each employee
            Where e.departmentid=e2.departmentid -- against dept
        );