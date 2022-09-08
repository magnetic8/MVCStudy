package com.smhrd.entity;

public class Member {

	// 1. 테이블의 컬럼명 == 필드의 변수명 일치
	// 2. Getter/Setter 필수!
	// 3. 기본생성자 필수!
	
	private String memId;
	private String memPwd;
	private String memName;
	
	public Member() {}
	
	public Member(String memId, String memPwd, String memName) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
	}
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	
	
	
}
