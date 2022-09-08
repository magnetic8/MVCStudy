package kr.board.entity;

public class Member {
	private int user_num;
	private String email;
	private String username;
	private String address;
	private String birth;
	private String address_detail;
	private String grade;
	private String pw;
	private String user_regdate;
	private String user_id;	
	private int zipcode;
	
	public Member() {
		
	}

	
	public Member(int user_num, String email, String username, String address, String birth, String address_detail,
			String grade, String pw, String user_regdate, String user_id, int zipcode) {
		super();
		this.user_num = user_num;
		this.email = email;
		this.username = username;
		this.address = address;
		this.birth = birth;
		this.address_detail = address_detail;
		this.grade = grade;
		this.pw = pw;
		this.user_regdate = user_regdate;
		this.user_id = user_id;
		this.zipcode = zipcode;
	}


	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(String user_regdate) {
		this.user_regdate = user_regdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "Member [user_num=" + user_num + ", email=" + email + ", username=" + username + ", address=" + address
				+ ", birth=" + birth + ", address_detail=" + address_detail + ", grade=" + grade + ", pw=" + pw
				+ ", user_regdate=" + user_regdate + ", user_id=" + user_id + ", zipcode=" + zipcode + "]";
	}

	
	
}
