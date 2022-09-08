package kr.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardDAO;

/**
 * Servlet implementation class BoardDeleteController
 */
@WebServlet("/boardDelete.do")
public class BoardDeleteController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// boardDelete.do?num=2
		int num = Integer.parseInt(request.getParameter("num")); // "2" -> 2
		// model 과 연동
		BoardDAO dao =new BoardDAO();
		int cnt =dao.boardDelete(num);
		if(cnt>0) {
			response.sendRedirect("/MVC01/boardList.do");
		}else {
			throw new ServletException("not delete~");
		}
		
	}

}
