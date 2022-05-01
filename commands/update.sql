update users 
set first_name = 'Luiz', last_name = 'Miranda'
where id = 7;

-- Update with join
update users as u
join profiles as p
on p.user_id  = u.id
set p.bio = concat(p.bio, ' atualizado')
where u.first_name = "Katelyn";