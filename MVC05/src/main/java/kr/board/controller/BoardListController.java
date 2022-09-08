package kr.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

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
		//request.setAttribute("list", list);
		// String nextPage="boardList";
		// JSON -Gson
		Gson gson=new Gson();
		// [{  },{  }]
		String json=gson.toJson(list);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.println(json); // data만 callback함수 전달
		return null;
	}

}
