package com.gjai.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BoardVO {
	
	// 게시글 하나의 정보- 번호, 제목, 내용, 조회수, 작성자, 작성일
	private int idx;
	private String memId;
	private String title;
	private String contents;
	private int count;
	private String writer;
	private String indate;
	private int boardGroup; // 원글(부모글) 답글을 묶는 역할
	private int boardSequence; // 답글의 순서
	private int boardLevel; // 답글의 레벨(들여쓰기)
	private int boardAvailable; // 게시판 삭제 여부(0,1)
	
}
