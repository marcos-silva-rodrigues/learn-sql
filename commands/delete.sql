delete from users where id = 39;

-- Delete with Join
delete p, u from users as u
left join profiles as p
on p.user_id  = u.id
where u.first_name = "Katelyn";