<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "login.*" %>
<html>
<head>
<title>회원정보수정</title>


<script language="JavaScript">

    function checkIt() {
        var userinput = eval("document.userinput");
               
        if(!userinput.pw1.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(userinput.pw1.value != userinput.pw2.value)
        {
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }
    }

</script>

<%
    String id = request.getParameter("id");   //아이디를 전달되는것이 아니기에이디를 꺼낸다.
    System.out.println(id);
    IndexDAO dao = IndexDAO.getInstance();
    IndexDTO dto = dao.getMember(id);          //로그인된아이디를 주면서 매개변수를 줌

	try{
%>


<form method="post" action="indexadminmodifyPro.jsp" name="userinput" onsubmit="return checkIt()" >

	     <font size="+1" ><b>회원 정보수정</b></font>
   		  <HR color = "#C0C0C0" size ="2" >

      <font size="2" color="#666" face="Comic Sans MS"> 사용자 ID</font>
      <font size="2" color="#666" face="Comic Sans MS"><%=dto.getId()%>
       <input type="hidden" name="id" value="<%=dto.getId() %>"/>
      </font>
   
      <HR color = "#C0C0C0" size ="0.3" >
		
      <font size="2" color="#666" face="Comic Sans MS"> 비밀번호</font> 
        <input type="password" name="pw1" size="10" maxlength="10" value="<%=dto.getPw1()%>">
        
           <HR color = "#C0C0C0" size ="0.3" >
		
        <font size="2" color="#666" face="Comic Sans MS">주소</font>
                <input type="text" name="name" size="15" maxlength="20" value="<%=dto.getAddress1()%>">
               <input type="button" value="우편번호"></br> 
        		<select name="address2" value="<%=dto.getAddress2()%>">
					<option>-----선택-----</option>
					<option>서울특별시</option>
					<option>부산광역시</option>
					<option>대구광역시</option>
					<option>울산광역시</option>
					<option>대전광역시</option>
					<option>인천광역시</option>
					<option>강원도</option>
					<option>경상남도</option>
					<option>경상북도</option>
					<option>전라남도</option>
					<option>충청남도</option>
					<option>충청북도</option>
					<option>제주도</option>
					<option>경기도</option>
					</select>
        <input type="text" name="name" size="15" maxlength="20" value="<%=dto.getAddress3()%>">

           <HR color = "#C0C0C0" size ="0.3" >
		
		
<font size="2" color="#666" face="Comic Sans MS">휴대폰번호</font>

         			<select name="phone1" value="<%=dto.getPhone1()%>">
					<option>--선택--</option>
					<option>kt</option>
					<option>skt</option>
					<option>u+</option>
					<option>hellomobile</option>
			</select> 
			<select name="phone2"value="<%=dto.getPhone2()%>">
					<option>--선택--</option>
					<option>010</option>
					<option>011</option>
					<option>016</option>
			</select> 
          <input type="text" name="name" size="15" maxlength="20" value="<%=dto.getPhone3()%>">-
           <input type="text" name="name" size="15" maxlength="20" value="<%=dto.getPhone4()%>">
           
           
           
           	<HR color = "#C0C0C0" size ="0.3" >
           	
			<font size="2" color="#666" face="Comic Sans MS">이메일주소</font>
          <input type="text" name="email1" size="40" maxlength="30" value="<%=dto.getEmail1()%>">	@
          <input type="text" name="email2" size="40" maxlength="30" value="<%=dto.getEmail2()%>">
          
                 <select name="email3" value="<%=dto.getEmail2()%>">
					<option>직접입력</option>
					<option>naver.com</option>
					<option>hanmil.net</option>
					<option>gmail.com</option>
					<option>nate.net</option>
			</select>
			<HR color = "#C0C0C0" size ="0.3" >

      <font size="2" color="#666" face="Comic Sans MS">이메일수신여부</font>
	    <%if(dto.getEmail3(). equals("수신")){%>
	    	수신<input type="radio" name="email3" value="수신" checked="checked">
	    	  수신거부<input type="radio" name="email3" value="수신거부">
		
		<%}else if(dto.getEmail3(). equals("수신거부")){%>
   	    	수신<input type="radio" name="email3" value="수신" >
	    	  수신거부<input type="radio" name="email3" value="수신거부"checked="checked">
		<%}%>

             <HR color = "#C0C0C0" size ="0.3" >
             
 		      <font size="2" color="#666" face="Comic Sans MS" value="dto.getJob()">직업</font>
 		      
                학생<input type="checkbox" name="job" value="학생" size="2" />
				주부<input type="checkbox" name="job" value="주부"size="2"  /> 
				직장인<input type="checkbox" name="job" value="직장인"size="2"  /> 
				무직<input type="checkbox"	name="job" value="무직" size="2" />
	
	<HR color = "#000000" size ="0.3" >
 


			<input type="submit" name="indexmodify" value="수 정">
			<input type="button" value="취  소" onclick="window.location='indexmain.jsp'">      
      

</form>
</body>
<%}catch(Exception e){}%>
</html>