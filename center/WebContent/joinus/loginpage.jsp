<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<head><title>로그인</title>
</head>
<body>
<link href="style.css" rel="stylesheet" type="text/css">
<form name="logform" action="/center/membershipPro.jsp" method="post" onSubmit="return checkIt()">
<br><br><br><br><br><br><br><br><br><br><br><center><h2>무거운 삶의 무게를 덜어드리겠습니다 </h2> 
 <br />
      <br />
<h3>노곰의 세계로</h3>
<br />
<table width="300" height="150" border="0" align="center">
  
  <TR height="30">
    <TD colspan="2" align="middle" ><STRONG>Log-in</STRONG>
    <br /><br />
      <br /></TD></TR>

      
  <TR height="30">
    
    <TD width="110" align=center>아이디</TD> 
    <TD width="150" align=center>
       <INPUT type="text" name="id" size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD width="110" align=center>비밀번호</TD>
    <TD width="150"  align=center>
      <INPUT type=password name="passwd"  size="15" maxlength="12"></TD></TR>

  <TR height="30">
    
      
    <TD colspan="2" align="middle">
     
      <br />
      <br />
      <a href="" > 아이디찾기</a>
      <a href="" > 패스워드찾기</a><br />
        <br />
      <br />
      <INPUT type=submit value="로그인"> 
      <INPUT type=reset value="다시입력">
      <input type="button" value="회원가입" onclick="javascript:window.location='/center/main.kiki"></TD></TR>
</TABLE>
</form>


</table>
</form>
</body>
</HTML>