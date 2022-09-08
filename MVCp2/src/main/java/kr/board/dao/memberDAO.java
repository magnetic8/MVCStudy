package kr.board.dao;
import java.sql.*;

import javax.naming.NamingException;

import kr.board.entity.Member;
public class memberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	
	
	public Connection getConnect() {
		// ojdbc6.jar
		String URL="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		String username="scott";
		String password ="tiger";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(URL, username, password);
			
		} catch (Exception e) {
			e.printStackTrace();
		
			
		}
		return conn;
}
	public int confirmID(String user_id) {
		int result = -1;
		String sql = "select * from userT where user_id=?";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user_id);
			rs = ps.executeQuery();
			if(rs.next() || user_id.equals("")) {
				result = 0;		// 이미 존재하는 회원		
			}else {
				result = 1;		// 가입 가능한 회원 아이디
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	

	public void dbClose() {
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(conn!=null)conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();			
		}
	}
	
}
