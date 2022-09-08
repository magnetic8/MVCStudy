package com.smhrd.mapper;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.smhrd.entity.Member;

public class MemberMapper {
	
	//SqlSessionFactory
	private static SqlSessionFactory sqlSessionFactory = null;

	
	static {
		try {
			String resource = "com/smhrd/mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch( Exception e) {
			e.printStackTrace();
		}
		
	}
	//====================절대 변하지 않는 코드↑==========================
	//====================================================================
	
	// 회원가입 메서드
	
	public int join(Member member) {
		
		// 1. SqlSession 생성하기
		// true --> auto commit
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 2. Sql문 찾아서 실행하기
		// parameterType에 들어가는 객체가 매개변수로 들어간다.
		// insert, delete, update -> 몇행이 변경되었는가(int)
		int cnt = 0;
		try {
			cnt = session.insert("join", member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 3. SqlSession 반환하기
		session.close();
		
		// 4. 쿼리 실행결과 리턴
		return cnt;
	}
}
