package kr.board.dao;
// JDBC
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import kr.board.entity.Board;
public class BoardDAO {
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
	// 게시판 전체 리스트를 넘겨주는 메서드 - allList()
	public List<Board> allList() {
		 String SQL="select * from board";
		 conn=getConnect();
		 List<Board> list=new ArrayList<Board>();
		 try {
			ps=conn.prepareStatement(SQL);
			rs=ps.executeQuery();
			while(rs.next()) {
				int num=rs.getInt("num");
				String title=rs.getString("title");
				String content=rs.getString("content");
				String writer=rs.getString("writer");
				String indate=rs.getString("indate");
				int count=rs.getInt("count");			
				Board vo=new Board(num, title, content, writer, indate, count);
				list.add(vo);
			}
		 } catch (Exception e) {
			e.printStackTrace();
		 } finally {
			dbClose();
		 }	
		 return list;
	  }
	// boardwrite(Board vo)
	
	public int boardWrite(Board vo) {
		String SQL = "insert into board(num, title, content, writer) values(board_num.nextval,?,?,?)";
		conn = getConnect();
		int cnt = -1;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setString(3, vo.getWriter());
			cnt=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
		
	} 
	// boardDelete(int num)
	
	public int boardDelete(int num) {
		String SQL = "delete from board where num=?";
		conn = getConnect();
		int cnt = -1;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setInt(1, num);
			cnt=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
		
	}
	// boardView(int num)
	// boardUpdate(Board vo)
	public int boardUpdate(Board vo) {
		String SQL ="update board set title=?, content=? where num=?";
		conn=getConnect();
		int cnt = -1;
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setInt(3, vo.getNum());
			cnt=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	
	
	public Board boardView(int num) {
		String SQL = "select * from board where num=?";
		conn = getConnect();
		Board vo =null;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setInt(1, num);
			rs=ps.executeQuery(); //실행
			if(rs.next()) {
				num=rs.getInt("num");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String writer = rs.getString("writer");
				String indate = rs.getString("indate");
				int count = rs.getInt("count");
				
				vo = new Board(num, title, content, writer, indate, count);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return vo;
	}//_boardView_
	public void countUpdate(int num) {
		String SQL="update board set count=count+1 where num=?";
		conn=getConnect();
		try {
			ps=conn.prepareStatement(SQL);
			ps.setInt(1,num);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
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
