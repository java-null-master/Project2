<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="center.flowes.loginDAO" %>

<html>
<head>

<title>ID 중복확인</title>
</head>

 <% request.setCharacterEncoding("UTF-8"); %>
 
 <%
 
  	String id = request.getParameter("id");
  	loginDAO login = loginDAO.getinstance();
  	int check = login.confirmID(id);

%>

<body>
<% if(check == 1) { %>
<form action="confirmId.jsp" method="post" name="checkForm">

<table align="center">
  <tr>
   <td align="center">
   <h3>이미 있지롱~!!<br>
       다른아이디를 선택하세요. </h3></td>
  </tr>
  
  <tr>
  <td>
  	<input type="text" name="id"> &nbsp;&nbsp;
  	<input type="submit" value="ID 중복확인">
  </td></tr>
  </table>
 </form>
 <% }else { %>
 
 
 
 
 <table align="center">
  <tr>
  <td align="center">
   <p>입력하신 ${id} 는<br>
   	사용하실 수 있는  ID입니다.</p>
   	</td>
   	</tr>
   	
   	<tr>
   	<td align="center">
   		<input type="button" value="close" onclick="setId()">
   	</td></tr>
 
 </table>
 
 
 <% } %>
 
 <script language="javascript">
 
    function setId()
    {
    	opener.document.usrinput.id.value=${id};
    	self.close();
    }
 </script>


</body>
</html>