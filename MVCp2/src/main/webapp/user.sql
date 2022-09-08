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
select * from userT;

insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '배수진', 'pipi', 'pipi1055'); 
insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '최정윤', 'pipipipi', 'pipi1044'); 
insert into userT(user_num, username, pw, user_id) values(user_num_seq.nextval, '배배배', 'pipipipi', 'pipi1033'); 

update userT set pw='pipipipi' where username='배수진';
select count(*) from userT where user_id='pipi1055' and pw='pipipipi';