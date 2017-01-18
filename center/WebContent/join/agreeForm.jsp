

<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<head><title></title>
</head>
<body>
<link href="style.css" rel="stylesheet" type="text/css">
<form name="loginPro" action="" method="post" onSubmit="return checkIt()">
<br><br><br><br><br><br><br><br><br><br><br><center><h2>NoGom Company </h2> 
<br><br><br><br><br><br>

<table width="600" height="" border="0" align="center">
  
  <TR>
  
    <TD colspan="2" align="center"  id="checkbox01">
    <i>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택),<br/> 프로모션 안내 메일 수신(선택)에 모두 동의합니다.</i>
   
    <input type="radio" name="checkbox01" /> <br><br><br><br>
                   </TD></TR>
      
<tr>
   <TD colspan="2" align="center" id="checkbox02">
   <i> 노곰 이용약관 동의(필수) </i><input type="radio" name="checkbox02" /> <br><br><br><br>
</TD></TR>


<TR>
    <TD  align=center>
    <i>개인정보 수집 및 이용에 대한 안내(필수)</i>
       <INPUT type="radio" name="checkbox03" size="15" maxlength="12"> <br><br><br><br></TD></TR>
       
    <TR>
        <TD  align=center>
    <i>위치정보 이용약관 동의(선택)</i>
       <INPUT type="radio" name="checkbox04" size="15" maxlength="12"> <br><br><br><br></TD></TR>
     <TR>  
          <TD  align=center>
    <i>이벤트 등 프로모션 알림 메일 수신(선택)</i>
       <INPUT type="radio" name="checkbox05" size="15" maxlength="12"> <br><br><br><br></TD></TR>
       
       
    

  <TR height="30">
    
      
    <TD name="agree" colspan="2" align="middle">
     
      <br />
      <br />
      <a href="/NoGom/loginpage.jsp" font-size="15pt" color="black"> 비동의</a>
      <a href="/NoGom/membershipForm.jsp" font-size="15pt" color="black"> 동의</a><br />
      <br />
      <br />


</table>
</form>
</body>
</HTML>