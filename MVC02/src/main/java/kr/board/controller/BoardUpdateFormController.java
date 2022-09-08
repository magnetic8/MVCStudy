package kr.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardDAO;
import kr.board.entity.Board;

/**
 * Servlet implementation class BoardUpdateFormController
 */
@WebServlet("/boardUpdateForm.do")
public class BoardUpdateFormController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ?num=3
		int num=Integer.parseInt(request.getParameter("num"));
		BoardDAO dao=new BoardDAO();
		Board vo=dao.boardView(num);
		// 수정 화면으로 forward(boardUpdate.jsp)
		request.setAttribute("vo", vo);
		RequestDispatcher rd=request.getRequestDispatcher("board/boardUpdate.jsp");
		rd.forward(request, response);
	}

}
