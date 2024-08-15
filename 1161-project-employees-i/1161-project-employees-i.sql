# Write your MySQL query statement below
select P.project_id , round(avg (e.experience_years),2) as average_years from project as p join employee as e 
on p.employee_id = e.employee_id group by p.project_id order by p.project_id;