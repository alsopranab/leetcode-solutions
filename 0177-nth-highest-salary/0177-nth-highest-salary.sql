Create Function getNthHighestSalary(N int) Returns Int
Begin
set N=N-1;
  Return (
      # Write your MySQL query statement below.

    Select Distinct Salary as getNthHighestSalary
    From Employee
    Order By Salary Desc
    Limit 1 Offset N

  );
END