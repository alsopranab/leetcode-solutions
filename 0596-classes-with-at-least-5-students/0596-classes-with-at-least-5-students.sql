# classes with at least 5 stu:

# cond: find the classes where there at least 5 stu. are there:

# how to solve this?

# lets find this out

select class
from courses
group by class
having count(student) >=5;