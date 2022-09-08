package kr.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.MemberMyBatisDAO;
import kr.board.entity.Member;

public class IdCheckController implements Controller{

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// dao로 아이디 중복체크
		System.out.println("idCheck 실행");
		request.setCharacterEncoding("utf-8");
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		String user_id=request.getParameter("user_id");
		int cnt=dao.getById(user_id);
		System.out.println("cnt값"+cnt);
		request.setAttribute("cnt", cnt);
		
		
		return "idcheck2";
	}

}
