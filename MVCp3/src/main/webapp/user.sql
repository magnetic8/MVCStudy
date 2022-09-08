select * from T_LOGIN
select * from T_LOGIN
select * from T_LOGIN
select * from t_login where login_id=(select login_id from t_user where login_id='login_id 01' and u_pw='u_pw 01');

INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 01', 'u_pw 01');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 02', 'u_pw 02');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 03', 'u_pw 03');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 04', 'u_pw 04');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 05', 'u_pw 05');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 06', 'u_pw 06');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 07', 'u_pw 07');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 08', 'u_pw 08');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 09', 'u_pw 09');
INSERT INTO t_user (login_id, u_pw) VALUES ('login_id 10', 'u_pw 10');

alter session set nls_timestamp_format='YYYY-MM-DD HH24:MI:SS';
select to_date(joindate, 'yy-mm-dd') from T_LOGIN 
select * from t_user 

select * 
from  t_login l, t_user u
where l.login_id = u.login_id
and l.login_id = #{login_id}

select * from T_LOGIN A join t_user B on A.login_id = B.login_id where A.login_id='login_id 01'

INSERT INTO t_user (login_id, u_pw) VALUES ('logintest', 'test');

INSERT INTO t_login (login_id, login_type, user_name, joindate, u_birthdate, post, u_addr, u_grade, u_point, u_type, u_nick) VALUES ('logintest', 'N', 'user_name 1', sysdate, sysdate, 'post 1', 'u_addr 1', 'u_grade 1', 1, 'u_type 1', 'u_nick 1');

insert into t_login (login_id, ty)

(select * from t_login A join t_user B on A.login_id = B.login_id)

delete t_user where login_id='logintest'

delete from t_user A join t_login B on A.login_id=B.login_id where A.login_id = 'logintest'
delete t_login, t_user from (t_login A join t_user B on A.login_id=B.login_id) where t_login.login_id = 'logintest'


delete 
from (select * from t_login A join t_user B 
on A.login_id=B.login_id
where A.login_id = 'logintest');

drop trigger user_delete


create trigger user_delete
after delete on T_USER
begin
	delete from T_LOGIN where login_id = old.login_id;
end 

select * from t_login A join t_user B on A.login_id = B.login_id where A.login_id=login_id 01

select * from cal_T

select * from t_img_board

