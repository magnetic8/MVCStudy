package com.gjai.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.gjai.entity.BoardVO;
import com.gjai.entity.Member;
import com.gjai.service.BoardService;
import com.gjai.service.BoardServiceImpl;
@Controller
public class BoardController {
	
	@Autowired // DI (의존성 주입)
	BoardService boardService;
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@RequestMapping("/boardList.do")
	public String getList(Model model){
		System.out.println("게시판 목록보기");
		
		List<BoardVO> list = boardService.getList();
		model.addAttribute("list", list);
	   
		return "boardList";
	}
	
	@RequestMapping(value="/boardWrite.do",method = RequestMethod.GET)
	public String register() {
		return "boardWrite";
	}
	
	@RequestMapping(value="/boardWrite.do",method = RequestMethod.POST)
	public String register(BoardVO vo, HttpSession session) {
		Member mvo=(Member) session.getAttribute("mvo");
		vo.setMemId(mvo.getMemId());
		boardService.register(vo);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardView.do")
	public String get(@RequestParam("idx") int idx,Model model) {
		BoardVO vo = boardService.get(idx);
		model.addAttribute("vo", vo);
		return "boardView";
	}
	
	@GetMapping("/boardDelete.do/{idx}")
	public String remove(@PathVariable int idx) {
		boardService.remove(idx);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardUpdate.do/{idx}")
	public String modify(@PathVariable int idx,Model model) {
		BoardVO vo = boardService.get(idx);
		model.addAttribute("vo", vo);
		return "boardUpdate";
	}
	
	@PostMapping("/boardUpdate.do")
	public String modify(BoardVO vo) {
		boardService.modify(vo);
		return "redirect:/boardList.do";
	}
	@GetMapping("/boardReply.do/{idx}")
	public String reply(@PathVariable int idx, Model model) {
		BoardVO vo = boardService.get(idx);
		model.addAttribute("vo", vo);
		return "boardReply";
	}
	
	@PostMapping("/boardReply.do")
	public String reply(BoardVO vo) {
		// 부모글(원글) -> 답변저장
		BoardVO parent =boardService.get(vo.getIdx());
		vo.setBoardGroup(parent.getBoardGroup());
		vo.setBoardSequence(parent.getBoardSequence()+1);
		vo.setBoardLevel(parent.getBoardLevel()+1);
		
		boardService.replyUpdate(parent); //원글과 답글의 순서 조정
		boardService.replyInsert(vo); // 답글등록
		
		return "redirect:/boardList.do";
	}
	
	
	
}
