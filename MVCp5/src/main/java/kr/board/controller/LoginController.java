package kr.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.board.dao.MemberMyBatisDAO;
import kr.board.entity.Member;

public class LoginController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String user_id=request.getParameter("user_id");
		String pw=request.getParameter("pw");
		String nextpage = null;
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		Member vo = new Member();
		vo.setUser_id(user_id);
		vo.setPw(pw);
		Member mvo=dao.login(vo);
		if(mvo!=null) {
			//로그인 성공
			//쿠키를 활용한 로그인 처리
			//Cookie cookie = new Cookie("user_id","user_id");
			//response.addCookie(cookie);
			
			//JSP는 session이 내장객체로 지정되어있지만
			//Servlet은 내장객체라는 개념이 없음
			
			HttpSession session= request.getSession(); 
			session.setAttribute("mvo", mvo);
			 
			//로그인 성공하면 로그인성공페이지로 
			
			nextpage = "loginS";
		}else {
			nextpage = "loginF";
		}
		return nextpage;
	}

}
