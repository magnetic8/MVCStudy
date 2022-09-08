select * from board;

create table member(
memId varchar2(20) not null,
memName varchar2(30),
memPwd varchar2(30),
primary key (memId)
);

insert into member values('smhrd01','관리자','smhrd01');
insert into member values('smhrd02','정유리','smhrd02');
insert into member values('smhrd03','황해도','smhrd03');

select * from member;

create table board(
  num number not null, -- 번호
  title varchar2(50) not null, -- 제목
  content varchar2(2000) not null, -- 내용
  writer varchar2(50) not null, -- 작성자
  indate date default sysdate, -- 작성일
  count number default 0, -- 조회수
  primary key(num)
);

create table board1(
  num number not null, -- 번호
  memId varchar2(20) not null, --회원 ID
  title varchar2(50) not null, -- 제목
  content varchar2(2000) not null, -- 내용
  writer varchar2(50) not null, -- 작성자
  indate date default sysdate, -- 작성일
  count number default 0, -- 조회수
  primary key(num)
);