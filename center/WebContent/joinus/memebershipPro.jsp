<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="center.flowers.*" %>
<%@ page import="java.sql.Timestamp" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="center.flowers.JoinDTO" />
<jsp:setProperty name="member" property="*" />


<%
	member.setRegDate((new Timestamp(System.currentTimeMillis())));
  JoinDAO join = JoinDAO.getInstance();
  join.insertJoin(member);
 
 
   response.sendRedirect("loginpage");
    
   %>
