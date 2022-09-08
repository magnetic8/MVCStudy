package kr.board.entity;

public class Board {
	private int num;
	private String title;
	private String content;
	private String Writer;
	private String indate;
	private int count;
	public Board() {
		
	}
	public Board(int num, String title,String content, String writer, String indate, int count) {
		super();
		this.title= title;
		this.num = num;
		this.content = content;
		this.Writer = writer;
		this.indate = indate;
		this.count = count;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return Writer;
	}
	public void setWriter(String writer) {
		Writer = writer;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Board [num=" + num + ", title=" + title + ", content=" + content + ", Writer=" + Writer + ", indate="
				+ indate + ", count=" + count + "]";
	}
	
	
	

}
