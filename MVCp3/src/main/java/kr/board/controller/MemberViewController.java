package kr.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.MemberMyBatisDAO;
import kr.board.entity.Member;

public class MemberViewController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		// 상세보기처리->jsp
		String login_id=request.getParameter("login_id");
		Member vo = dao.memberView(login_id);
		request.setAttribute("vo", vo);
		
		return "memberView";
	}

}
