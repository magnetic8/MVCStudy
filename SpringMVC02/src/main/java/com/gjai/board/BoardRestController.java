package com.gjai.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gjai.entity.BoardVO;
import com.gjai.service.BoardService;

@RestController // JSON Data전달
public class BoardRestController {

		@Autowired
		BoardService boardService;
		@RequestMapping("/board")
		public List<BoardVO> boardListAjax(){
			List<BoardVO> list = boardService.getList();
			return list; // Object ----> [jackson-databind]----->JSON
		}
		@GetMapping("/board/{idx}")
		public BoardVO boardViewAjax(@PathVariable int idx) {
			return boardService.get(idx);
		}
		
		
		
}
