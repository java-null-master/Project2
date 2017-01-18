<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="center.flowers.logDTO" %>
<%@ page import="java.sql.Timestamp" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="center.flowers.logDTO" />
<jsp:setProperty name="member" property="*" />


<%

  login.setReg(new Timestamp(System.currentTimeMillis()));
  loginDAO login = loginDAO.getINstance();
  login.insertlogin(login);
 
 
   response.sendRedirect("loginpage");
   
   %>
\
