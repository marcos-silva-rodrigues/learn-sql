-- Inner Join
select u.id as uid, p.id as pid, u.first_name, p.bio 
from users as u
inner join profiles p 
on u.id = p.user_id;

select u.id as uid, p.id as pid, u.first_name, p.bio 
from users as u
inner join profiles p 
on u.id = p.user_id
where u.first_name  like '%a'
ORDER by u.id desc;

-- Left Join
select u.id as uid, p.id as pid, u.first_name, p.bio 
from users as u
left join profiles p 
on u.id = p.user_id;

-- Right Join
select u.id as uid, p.id as pid, u.first_name, p.bio 
from users as u
right join profiles p 
on u.id = p.user_id;