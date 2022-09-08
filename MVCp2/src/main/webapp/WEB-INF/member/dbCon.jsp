<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <% 

String ub_url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String ub_username="scott";
String ub_password="tiger";

Connection con = null;
Statement stmt = null;
ResultSet rs =null;
String sql=null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection(ub_url,ub_username,ub_password);
}catch(SQLException e){out.println(e);}
    %>