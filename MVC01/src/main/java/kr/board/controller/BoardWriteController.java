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
@WebServlet("/boardwrite.do")
public class BoardWriteController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 데이터에 한글 깨짐 방지
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
		
		// 2. model과 연동(insert) - BoardDAO
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardwrite(vo);
		if(cnt>0) {
			// 글쓰기가 성공후에는 -> 다시 리스트페이지로 경로를 변경  
			response.sendRedirect("/MVC01/boardList.do");
		}else {
			// 실패-> 예외발생(x)
			// throw : 강제로 예외를 발생시키는 명령어
			throw new ServletException("not insert~");
		}
		
		
	}

}
