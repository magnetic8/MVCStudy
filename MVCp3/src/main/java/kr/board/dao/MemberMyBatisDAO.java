package kr.board.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.board.entity.Board;
import kr.board.entity.BoardPaging;
import kr.board.entity.Cal;
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
		int cnt2=session.insert("join2", vo);
		session.commit();
		session.close();
		return cnt1+cnt2;
		
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
	
	// 회원정보 수정
	public int memberUpdate(Member vo) {
		SqlSession session=sqlSessionFactory.openSession();
		int cnt1=session.update("memberUpdate1", vo);
		int cnt2=session.update("memberUpdate2", vo);
		session.commit();
		session.close();
		return cnt1+cnt2;
		
	}
	// 회원 정보 리스트
	public Member memberView(String login_id) {
		SqlSession session=sqlSessionFactory.openSession();
		Member vo =session.selectOne("memberView", login_id);
		session.close();
		return vo;
	}
	
	// 회원정보 삭제(탈퇴)
	public int memberDelete(String login_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt= session.delete("memberDelete",login_id);		
		session.commit();
		session.close();
		return cnt;
}
	//기사
	public List<Cal> allCal(){
		SqlSession session =sqlSessionFactory.openSession();
		List<Cal> list =session.selectList("allCal");
		session.close();
		return list;
	}
	
	public int allListCount() {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt=session.selectOne("allListCount");
		session.close();//반납
		return cnt;
	}
	
	public List<Cal> someList(BoardPaging page) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Cal> list=session.selectList("someList",page);
		session .close();//반납
		return list;
}
}
	

