package kr.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardDAO;
import kr.board.entity.Board;


@WebServlet("/boardList.do")
public class BoardListController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardDAO dao = new BoardDAO();
		List<Board> list=dao.allList();
		// View와 연동하기(jsp) - boardList.jsp
		// Controller ---(forward)---> View
		// 1. 객체(request)바인딩(*********)
		// forward : JSP(View)
		request.setAttribute("list", list);
		RequestDispatcher rd=request.getRequestDispatcher("board/boardList.jsp");
		rd.forward(request, response);
		
	}

}
