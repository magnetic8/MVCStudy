package kr.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		// ?num=2
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO dao=new BoardDAO();
		Board vo=dao.boardView(num);
		// 수정화면응답 HTML코드
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out =response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<form action='/MVC01/boardUpdate.do' method='post'>");
		out.println("<input type='hidden' name='num' value='"+vo.getNum()+"'/>");
		out.println("<table border='1'>");
		out.println("<tr>");
		out.println("<td>제목</td>");
		out.println("<td><input type='text' name='title' value='"+vo.getTitle()+"'/></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>내용</td>");
		out.println("<td><textarea rows='10' cols='50' name='content'>"+vo.getContent()+"</textarea></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td colspan='2' allign='center'>");
		out.println("<input type='submit' value='수정'/>");
		out.println("<input type='reset' value='취소'/>");
		out.println("<a href='/MVC01/boardList.do'>리스트</a>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}

}
