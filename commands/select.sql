select u.first_name, u.last_name from users as u;

select u.first_name, u.last_name from users as u 
where u.updated_at  < now() and id > 1;

select u.first_name, u.last_name from users as u 
where u.updated_at  < now() or id > 1;

select * from users
where created_at between '2020-06-12 17:38:52' and '2020-09-04 19:06:55';

select u.id, u.first_name, u.last_name  from users u
where id in (23, 62, 18)

select u.id, u.first_name, u.last_name  from users u
where first_name like '%ar%';

select u.id, u.first_name, u.last_name  from users u
where first_name like '______';

select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by created_at asc;

select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by first_name asc, id desc;

select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by id asc limit 3 offset 6;

select u.id, u.first_name, u.last_name, u.created_at  from users u
where id > 33 order by id asc limit 10, 5;

insert into profiles 
(bio, description, user_id)
select 'bio', 'description', id 
from users;

insert into profiles (bio, description, user_id)
select concat('Bio de ', first_name), concat('Description de ', first_name), id 
from users;


