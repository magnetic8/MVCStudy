package kr.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.board.dao.BoardMyBatisDAO;
import kr.board.entity.Board;
// Servlet->POJO(프론트 컨트롤러가 해야할일을 대신해주는 클래스)


public class BoardListController implements Controller{
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//BoardDAO dao =new BoardDAO();
		BoardMyBatisDAO dao =new BoardMyBatisDAO();
		// 전체 리스트 가져오기
		List<Board> list=dao.allList();
		// View에 forward
		request.setAttribute("list", list);
		// String nextPage="boardList";
		return "boardList";
	}

}
