# Write your MySQL query statement below
select name , bonus from employee as e left join bonus as b on b.empId = e.empId
where b.bonus<1000 or bonus is null;