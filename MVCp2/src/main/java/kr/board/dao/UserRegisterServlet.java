package kr.board.dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserRegisterServlet extends HttpServlet{
	private static final long serialVersionUTD =1L;
	
	protected void dopost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); 	
		String user_id = request.getParameter("user_id");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		String address_detail = request.getParameter("address_detail");
		String grade = request.getParameter("grade");
		String pw = request.getParameter("pw");
		String user_regdate = request.getParameter("user_regdate");
		int user_num=Integer.parseInt(request.getParameter("user_num"));
		int zipcode=Integer.parseInt(request.getParameter("zipcode"));
		

}
	}
