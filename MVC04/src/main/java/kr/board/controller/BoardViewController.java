package kr.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.board.dao.BoardMyBatisDAO;
import kr.board.entity.Board;


public class BoardViewController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
					BoardMyBatisDAO dao = new BoardMyBatisDAO();
					// 상세보기처리->jsp
					int num =Integer.parseInt(request.getParameter("num"));
					Board vo=dao.boardView(num);
					dao.countUpdate(num); // 조회수 누적
					request.setAttribute("vo", vo);
					//nextPage="boardView";
					return "boardView";
	}	
	
	

}
