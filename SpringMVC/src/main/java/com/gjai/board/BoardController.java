package com.gjai.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	// /boardList.do라는 요청이 왔을 때
	// /boardList.jsp로 이동시키시오
	// RequestMapping 옆에 요청 url 입력
	// boardList.do 요청이 왔을 때 실행될 메소드 작성
	// boardLList 글자를 리턴
	// views 폴더에 boardList.jsp 만들기 
	
	@RequestMapping(value="/boardList.do")
	public String boardList(Model model) {
		System.out.println("게시판 목록보기 요청");
		// Hello World값을 boardList.jsp로 전달하기
		model.addAttribute("text", "Hello World!");
	
		// boardList.jsp에서 Hello World 넣은 값을 출력하시오
		
		return "boardList";
	}
	
}
