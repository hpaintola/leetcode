# Write your MySQL query statement below
with emp as (
select d.name as Department , e.name as Employee , e.salary as salary,
dense_rank() over(partition by e.departmentId  order by e.salary desc) as rnk
from employee e 
join department d on d.id = e.departmentId 
)
select Department ,  Employee , Salary from emp
where rnk <4;