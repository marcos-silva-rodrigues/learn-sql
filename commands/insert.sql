use learnsql;
show tables;
describe users;

insert into users 
(first_name , last_name, email, password_hash) values 
 ("Luiz", "miranda", "luiz@email.com", "a_hash");

-- Insert for n to n relation
insert into user_roles (user_id, role_id) 
select id,
(select id from roles order by rand() limit 1)
from users;

-- Insert with ignore
insert ignore into user_roles (user_id, role_id)
select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users order by rand() limit 5;

-- Insert with multiple joins
select u.id as uid, u.first_name, p.bio, r.name
from users as u
left join profiles as p 
on u.id = p.user_id 
inner join user_roles as ur 
on u.id = ur.user_id 
inner join roles as r 
on ur.role_id = r.id
order by uid;