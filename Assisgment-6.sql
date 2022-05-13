delimiter //
create procedure gender(in num varchar(10))
begin
if num='M'
then call male();
else 
call female();
end if;
end //
delimiter ;

call gender("F");

DROP PROCEDURE gender;
DROP PROCEDURE male;

delimiter $$
create procedure male()
begin
select * from users 
where gender='M';
end $$
delimiter ;

delimiter //
create procedure female()
begin
select * from users
where gender='F';
end //
delimiter ;

SELECT * from users;


