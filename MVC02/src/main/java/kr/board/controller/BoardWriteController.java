package kr.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardDAO;
import kr.board.entity.Board;

/**
 * Servlet implementation class BoardWriteController
 */
@WebServlet("/boardWrite.do")
public class BoardWriteController extends HttpServlet {	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라메터수집(vo)
		request.setCharacterEncoding("utf-8");
		// 1. title, content, writer 파라메터 받기
		// 파라메터 수집(VO, DTO)
		String title =request.getParameter("title");
		String content =request.getParameter("content");
		String writer =request.getParameter("writer");
		Board vo = new Board();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		
		BoardDAO dao=new BoardDAO();
		int cnt=dao.boardWrite(vo);
		if(cnt>0) { // 등록성공->boardList.do
			// redirect 기법
			response.sendRedirect("/MVC02/boardList.do");
		}else {
			throw new ServletException("not insert");
		}
				
	}

}
