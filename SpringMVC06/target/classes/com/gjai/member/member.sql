-- 아이디, 비밀번호, 닉네임, 전화번호, 주소 

create table smember(
	id varchar(100) not null,
	pw varchar(100) not null,
	nick varchar(100) not null,
	phone varchar(100) not null,
	addr varchar(100) not null,
	primary key(id)
)

insert into smember values('admin','1234','관리자','010-1234-5678','광주인공지능사관학교')



drop

delete

insert