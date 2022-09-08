package kr.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.login.dao.MemberMyBatisDAO;
import kr.login.entity.Member;

public class LoginController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
		String login_id = request.getParameter("login_id");
		String u_pw = request.getParameter("u_pw");
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		Member vo = new Member();
		System.out.println(login_id);
		vo.setLogin_id(login_id);
		vo.setU_pw(u_pw);
		System.out.println(vo);
		Member mvo = dao.login(vo);
		System.out.println(mvo);
		String nextpage;
		if (mvo != null) {
			// 로그인 성공
			// 쿠키를 활용한 로그인 처리
			// Cookie cookie = new Cookie("user_id","user_id");
			// response.addCookie(cookie);

			// JSP는 session이 내장객체로 지정되어있지만
			// Servlet은 내장객체라는 개념이 없음

			HttpSession session = request.getSession();
		    session.setAttribute("mvo", mvo);

			
			// 로그인 성공하면 메인페이지로
		    nextpage= "redirect:/main.do";
		}
		else {
			String alt="alert('아이디나 비밀번호가 틀렸습니다');";
			request.setAttribute("alt",alt );
			nextpage="login/loginHTML";
		}
		 
		return  nextpage;
	}

}
