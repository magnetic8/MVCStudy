create table userT(
user_num number,
email varchar(50),
username varchar(20),
address varchar(100),
birth date,
address_detail varchar(100),
zipcode number,
grade varchar(20),
pw varchar(50),
user_regdate date,
user_id varchar(20),

primary key (user_num)

);

create sequence user_num_seq
select * from t_user;
select * from t_login;
select count(*) from t_user where login_id='login_id 01';
insert into t_login(login_id,login_type,user_name,joindate,u_birthdate,post,u_addr,u_nick) values('ppp','m','ppp',sysdate,'2000-10-22','ppp','ppp','ppp') ;	

insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '배수진', 'pipi', 'pipi1055'); 
insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '최정윤', 'pipipipi', 'pipi1044'); 
insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '배배배', 'pipipipi', 'pipi1033'); 

update userT set pw='pipipipi' where username='배수진';
select count(*) from userT where user_id='pipi1055' and pw='pipipipi';