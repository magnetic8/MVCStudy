package kr.board.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.board.entity.Member;

public class MemberMyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory;
	//초기화 블럭(프로그램 실행시 딱 한번만 실행)
	static {
		try {
		String resource = "kr/board/dao/mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource); //빨대를 만들어줌
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream); //build에 빨대를 넘겨주고 connection pool를 가리킴
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//로그인 
	public Member login(Member vo) {
		SqlSession session = sqlSessionFactory.openSession();
		Member mvo=session.selectOne("login", vo);
		session.close();
		return mvo;
	}
	public int join(Member vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt1=session.insert("join1", vo);
//		int cnt2=session.insert("join2", vo);
		session.commit();
		session.close();
		return cnt1;
		
	}
	
	// ID검색
	public int getById(String login_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt= session.selectOne("getById", login_id);		
		session.close();
		return cnt;
	
}
	// 닉네임 검색
	public int getByNic(String u_nick) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt= session.selectOne("getByNic", u_nick);		
		session.close();
		return cnt;
	}
}
	

