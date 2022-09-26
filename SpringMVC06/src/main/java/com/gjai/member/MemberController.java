package com.gjai.member;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gjai.entity.MemberVO;
import com.gjai.mapper.MemberMapper;

@Controller
public class MemberController {
	
	@Inject
	private MemberMapper mapper;

	
	@RequestMapping("/main.do")
	public void main() {
		
	}
	
	@RequestMapping("/join.do")
	public void join() {
		
	}
	@RequestMapping("/idCheck.do")
	public @ResponseBody MemberVO idCheck(String id) {
		
		MemberVO vo = mapper.idCheck(id);
		
		if(vo != null) {
			vo = new MemberVO();
			vo.setId("true");
		}else {
			vo = new MemberVO();
			vo.setId("null");
		}
		
		return vo;
		
	}
	
}
