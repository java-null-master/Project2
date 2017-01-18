<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="center.flowers.*" %>
<html>
<head><title>Modify</title></head>

<script language="Javascript">
function checkIt(){
var userinput = evl("document.userinput");

if(!userinput.pw.value){
alert("비밀번호를 입력하세요");
return false;
}

if(userinput.pw,value != userinput.pw.value)
{
alert("비밀번호를 동일하세 입력하세요");
return false;
}
}
</script>




<form method="post" action="indexadminmodifyPro.kiki" name="userinput" onsubmit="return checkIt()" >

	     <font size="+1" ><b>회원 정보수정</b></font>
   		  <HR color = "#C0C0C0" size ="2" >

      <font size="2" color="#666" face="Comic Sans MS"> ID</font>
      <font size="2" color="#666" face="Comic Sans MS"><%=dto.getId()%>
       <input type="hidden" name="id" value="<%=dto.getId() %>"/>
      </font>
   
      <HR color = "#C0C0C0" size ="0.3" >
		
      <font size="2" color="#666" face="Comic Sans MS"> 비밀번호</font> 
        <input type="password" name="pw1" size="10" maxlength="10" value="<%=dto.getPw()%>">
        
           <HR color = "#C0C0C0" size ="0.3" >
           <font size="2" color="#666" face="Comic Sans MS">휴대폰번호</font>
		
        <font size="2" color="#666" face="Comic Sans MS">주소</font>
                <input type="text" name="name" size="15" maxlength="20" value="<%=dto.getAddress()%>">
               

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