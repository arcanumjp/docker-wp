create database wordpress;
create user wordpress@localhost identified by 'password';
grant all on wordpress.* to wordpress@localhost;
