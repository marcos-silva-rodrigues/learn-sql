use learnsql;
show tables;
describe users;

insert into users 
(first_name , last_name, email, password_hash) values 
 ("Luiz", "miranda", "luiz@email.com", "a_hash");