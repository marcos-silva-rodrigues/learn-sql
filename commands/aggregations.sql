-- Group by
select first_name, count(id) as total
from users as u
group by first_name 
order by total desc;

-- Min, Max, Avg, Sum, Count
select 
	max(salary) as max_salary,
	min(salary) as min_salary,
	avg(salary) as avg_salary,
	sum(salary) as sum_salary,
	count(salary) as count_salary
from users;

-- Aggregation with join and group by
select 
u.first_name,
max(u.salary) as max_salary,
min(u.salary) as min_salary,
avg(u.salary) as avg_salary,
sum(u.salary) as sum_salary,
COUNT(u.id) as total
from users u
left join profiles as p
on p.user_id = u.id
GROUP BY u.first_name
ORDER BY total DESC;