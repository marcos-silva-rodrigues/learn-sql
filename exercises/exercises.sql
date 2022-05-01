-- 1
insert into users 
(first_name , last_name , email , password_hash , salary)
values
('fulano', 'da silva', 'fulano@email.com', 'asdasdsad1324asd!@1', round(rand() * 10000)),
('ciclano', 'da silva', 'cicla-silva@email.com', 'asdasdsad1324asd!@2', round(rand() * 10000)),
('beltrano', 'da silva', 'belt_silva@outroemail.com', 'asdasdsad1324asd!@3', round(rand() * 10000)),
('fulano', 'teste #1', 'teste-fulano1@teste.com', 'asdasdsad1324asd!@4',round(rand() * 10000)),
('fulano', 'teste #2', 'teste-fulano2@email.com', 'asdasdsad1324asd!@5', round(rand() * 10000));

-- 2
insert into profiles (bio ,description, user_id) 
	select 
		concat('Bio de ', u.first_name),
		concat('Description de ', u.first_name),
		u.id 
	from users as u
	order by u.created_at desc 
	limit 5;

-- 3
insert into user_roles (user_id, role_id)
	select 
		u.id,
		(select id from roles  order by rand() limit 1)
	from users as u 
	order by u.created_at DESC 
	limit 5;

-- 4
select u.id, u.first_name  from users as u order by u.created_at DESC limit 5; 

--5
update users as u set u.last_name = 'ultimo atualizado' 
where u.id = (select u.id order by u.created_at desc limit 1);

-- 6
delete from user_roles as ur 
where user_id = (
	select u.id from users as u 
	order by u.id ASC
	limit 1
);

-- 7
delete from users as u
where u.id = (
	select ur.user_id 
	from user_roles as ur
	join roles as r 
	where r.name = 'PUT'
	limit 1
)

-- 8
select u.first_name, p.bio, r.name 
from users as u
join profiles as p
on u.id = p.user_id 
join user_roles as ur
on ur.user_id = u.Id 
join roles as r
on r.id = ur.role_id;

--9
select u.first_name, p.bio, u.salary, r.name
from users as u
left join profiles as p
on u.id = p.user_id 
join user_roles as ur
on ur.user_id = u.Id 
join roles as r
on r.id = ur.role_id;

-- 10
select u.first_name, p.bio, u.salary, r.name 
from users as u
join profiles as p
on u.id = p.user_id 
join user_roles as ur
on ur.user_id = u.Id 
join roles as r
on r.id = ur.role_id
order by u.salary desc;