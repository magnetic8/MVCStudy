package kr.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.board.dao.BoardMyBatisDAO;


public class BoardDeleteController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 삭제처리->리스트로
					BoardMyBatisDAO dao = new BoardMyBatisDAO();
					int num =Integer.parseInt(request.getParameter("num"));
					dao.boardDelete(num);
					//nextPage="redirect:/boardList.do";
		
					return null;
	}
	

}
