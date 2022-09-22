-- 게시판 테이블
create table board(
	idx int not null auto_increment,
	title varchar(1000) not null,
	contents varchar(3000) not null,
	count int not null default 0,
	writer varchar(100) not null,
	indate datetime not null default now(),
	primary key(idx)
)

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