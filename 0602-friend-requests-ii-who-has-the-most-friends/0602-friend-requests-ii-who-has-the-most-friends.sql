# Write your MySQL query statement below
with cte as(
select requester_id as id from RequestAccepted 
union all
 SELECT accepter_id AS id
   FROM RequestAccepted )

select id , count(id) as num from cte group by id order by COUNT(id) desc
limit 1