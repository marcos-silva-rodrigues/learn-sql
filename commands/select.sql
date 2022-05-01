-- Basic
select u.first_name, u.last_name from users as u;

-- Where condition
select u.first_name, u.last_name from users as u 
where u.updated_at  < now() and id > 1;

select u.first_name, u.last_name from users as u 
where u.updated_at  < now() or id > 1;

-- Between condition
select * from users
where created_at between '2020-06-12 17:38:52' and '2020-09-04 19:06:55';

-- In Condition
select u.id, u.first_name, u.last_name  from users u
where id in (23, 62, 18)

-- Like Condition
select u.id, u.first_name, u.last_name  from users u
where first_name like '%ar%';

select u.id, u.first_name, u.last_name  from users u
where first_name like '______';

-- Order By Condition
select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by created_at asc;

select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by first_name asc, id desc;

-- Limit and Offset Condition
select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by id asc limit 3 offset 6;

select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by id asc limit 10, 5;

-- Insert with Select
insert into profiles 
(bio, description, user_id)
select 'bio', 'description', id 
from users;

insert into profiles (bio, description, user_id)
select concat('Bio de ', first_name), concat('Description de ', first_name), id 
from users;

-- Select with other tables
select u.id as uid, p.id as pid from users as u, profiles as p;

select u.id as uid, p.id as pid, u.first_name, p.bio 
from users as u, profiles as p where u.id = p.user_id;


