package com.gjai.board;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gjai.entity.BoardVO;
import com.gjai.mapper.BoardMapper;
import com.gjai.service.BoardService;

@Controller  // new BoardController()
public class BoardController {

	// /boardList.do라는 요청이 왔을 때
	// /boardList.jsp로 이동시키시오
	// RequestMapping 옆에 요청 url 입력
	// boardList.do 요청이 왔을 때 실행될 메소드 작성
	// boardLList 글자를 리턴
	// views 폴더에 boardList.jsp 만들기 
	
	@Autowired // DI(의존성 주입)
	BoardService boardService;
	// HandlerMapping
	@RequestMapping(value="/boardList.do")
	public String boardList(Model model) {
		System.out.println("게시판 목록보기 요청");
		
		// 게시판 데이터
		// 번호, 제목, 내용, 조회수, 작성자, 작성일
		// 아래 내용을 boardList.jsp로 보내서 출력하시오.
		// 1, "오늘 아침 먹은 거 보여준다.", "사실 안 먹음 ㅋㅋ", 10, "호두아빠", "2022-09-14"
		// Hello World값을 boardList.jsp로 전달하기
		// 데이터를 vo로 묶어서 vo라는 이름으로 model에 담으시오
		// 0915 start-
		
		List<BoardVO> list = boardService.boardList();
		model.addAttribute("list", list);
		
		
		
		return "boardList";
	}
	@RequestMapping(value="/boardForm.do")
	public String boardForm() {
		return "boardWrite";
	}
	@RequestMapping(value="/boardWrite.do")
	public String boardWrite(BoardVO vo) {
		boardService.boardInsert(vo);
		
		return "redirect:/boardList.do";
	}
	@GetMapping("/boardView.do")               // HttpServlet
	public String boardView(@RequestParam("idx") int idx, Model model) {
		BoardVO vo =boardService.boardView(idx);
		model.addAttribute("vo",vo);
		return "boardView";
	}
	//               boardDelete.do/9
	@GetMapping("/boardDelete.do/{idx}")
	public String boardDelete(@PathVariable int idx) {
		boardService.boardDelete(idx);		
		return "redirect:/boardList.do";
	}
	@GetMapping("/boardUpdateForm.do/{idx}")
	public String boardUpdateForm(Model model,@PathVariable int idx) {
		BoardVO vo =boardService.boardView(idx);
		model.addAttribute("vo", vo);
		return "boardUpdate";
	}
	@PostMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		boardService.boardUpdate(vo);
		return "redirect:/boardList.do";
	}
}
