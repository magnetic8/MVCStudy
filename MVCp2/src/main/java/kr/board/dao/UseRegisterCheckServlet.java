package kr.board.dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UseRegisterCheckServlet")
public class UseRegisterCheckServlet extends HttpServlet{
	private static final long serialVersionUTD =1L;
	
	protected void dopost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String user_id = request.getParameter("user_id");
		response.getWriter().write(new memberDAO().confirmID(user_id) + "");
	}

}
