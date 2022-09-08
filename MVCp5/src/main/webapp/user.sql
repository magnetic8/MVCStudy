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