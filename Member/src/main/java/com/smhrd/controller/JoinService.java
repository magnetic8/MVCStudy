package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.entity.Member;
import com.smhrd.mapper.MemberMapper;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 파라미터 수집
			String memId = request.getParameter("id");
			String memPwd =request.getParameter("pw");
			String memName =request.getParameter("name");
			
			Member member = new Member(memId, memPwd, memName);
			
			
		
		// 2. DAO에 데이터를 저장하는 코드 작성 
			
		// 3. DAO의 join 메서드를 사용
			MemberMapper dao = new MemberMapper();
			int cnt = dao.join(member);
			
		// 4. 회원가입 성공; / 실패 판단
		      // 4.1 성공 -> main
	          // 4.2 실패 -> join
		if(cnt >0) {
			// 성공
			response.sendRedirect("Main.jsp");
		}else {
			// 실패
			response.sendRedirect("join.jsp");
		}
	}

}
