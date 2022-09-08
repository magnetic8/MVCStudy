package kr.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import kr.board.dao.MemberMyBatisDAO;
import kr.board.entity.Board;
import kr.board.entity.BoardPaging;
import kr.board.entity.Cal;
import kr.board.entity.Member;

public class CalListController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String p = request.getParameter("p");
		if(p == null) {
			p = "1";
		}
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		// 로그인 
		System.out.println(p);
		//페이징 처리
		BoardPaging board = new BoardPaging(); 
		board.setAllPageCount(dao.allListCount());
		System.out.println(dao.allListCount());
		board.calculatePageCount();
		board.startCount(Integer.parseInt(p));
		board.endCount(Integer.parseInt(p));
		board.start_Page(Integer.parseInt(p));
		board.end_Page(Integer.parseInt(p));
		board.setCurrentPage(Integer.parseInt(p));
		List<Cal> list=dao.someList(board);
		System.out.println(board.getEnd_page());
		request.setAttribute("list", list);
		request.setAttribute("board", board);
		
//		String nextPage = "boardList";
		return "column";
	}

}
