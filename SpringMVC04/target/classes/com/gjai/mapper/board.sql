-- 게시판 테이블
create table board(
	idx int not null auto_increment,
	memId  varchar(1000) not null,
	title varchar(1000) not null,
	contents varchar(3000) not null,
	count int not null default 0,
	writer varchar(100) not null,
	indate datetime not null default now(),
	primary key(idx)
)
drop table board;

insert into board(title, contents, writer)
values('오늘 아침에 오다가 해도쌤 봄ㅋㅋ','땅에 떨어진 과자 드시더라 ㄹㅇㅋㅋ','사과링');
insert into board(title, contents, writer)
values('오늘 아침에 빵을 먹음','옥수수빵 먹음','오렌링');
insert into board(title, contents, writer)
values('오늘 날씨ㅣ 좋넹','매우 맑음','포도포도');
insert into board(title, contents, writer)
values('오늘 매우매우 좋음','아름다운 세상','바나나킥');
insert into board(title, contents, writer)
values('렛잇고','렛잇고~','겨울여왕');

select*from board;

select * from member;

create table member(
	memId varchar(50) not null,
	memPwd varchar(50) not null,
	memName varchar(50) not null,
	primary key(memId)


);

insert into member values('smhrd01','smhrd01','관리자');
insert into member values('smhrd02','smhrd02','박매일');
insert into member values('smhrd03','smhrd03','황해도');

-- 답변게시판 --

create table reboard(
	idx int not null,
	memId  varchar(1000) not null,
	title varchar(1000) not null,
	contents varchar(3000) not null,
	count int not null default 0,
	writer varchar(100) not null,
	indate datetime not null default now(),
	boardGroup int not null,
	boardSequence int not null,
	boardLevel int not null,
	boardAvailable int not null,	
	primary key(idx)
)

drop table reboard;

select  * from reboard;

select * from reboard 
order by boardGroup desc, boardSequence asc
limit 0,10; 

delete  from reboard;