<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Timestamp" %>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@khq.iptime.org:1521:orcl";
	Connection conn = DriverManager.getConnection(url,"qam22","qam22");
	PreparedStatement pstmt = conn.prepareStatement("select * from join");
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String pwcheck = rs.getString("name");
		String name = rs.getString("birth");
		int birth = rs.getInt("phone");
		String gender = rs.getString("address");
		int callnumber = rs.getInt("email");
		int callnumber2 = rs.getInt("backName");
		int callnumber3 = rs.getInt("bankAcount");
		String email = rs.getString("lev");
          String word = rs.getString("word");
		
		out.println("id : "+id+"<br/>");
		out.println("pw : "+pw+"<br/>");
		out.println("pwcheck : "+pwcheck+"<br/>");
		out.println("name : "+name+"<br/>");
		out.println("birth : "+birth+"<br/>");
		out.println("gender : "+gender+"<br/>");
		out.println("callnumber :"+callnumber+"-"+callnumber2+"-"+callnumber3+"<br/>");
		out.println("email : "+email+"@"+email2+"<br/>");
		out.println("한마디 : "+word+"<br/>");
		out.println("<br/>");
		out.println("<br/>");
	}
	
	rs.close();
	pstmt.close();
	conn.close();
%>