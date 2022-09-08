package kr.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.MemberMyBatisDAO;
import kr.board.entity.Member;

public class joinController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String address_detail = request.getParameter("address_detail");
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		Member vo = new Member();
		vo.setUser_id(user_id);
		vo.setPw(pw);
		vo.setUsername(username);
		vo.setBirth(birth);
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setAddress_detail(address_detail);
		dao.join(vo);
		return "redirect:/joinS.do";
	} 

}
