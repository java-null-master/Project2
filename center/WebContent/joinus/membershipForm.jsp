<%@ page language="java" contentType="text/html; charset=utf-8"%>
<link href="style.css" rel="stylesheet" type="text/css">
<head>
	<title>회원가입</title>
	<center><br><br><br><br>
	<link href="style.css" rel="stylesheet" type="text/css">
	
<script language="JavaScript">
	function checkIt()
	{
		var userinput = eval("document.userinput");
		if(!userinput.id.value)
		{
			alert("아이디를 입력하세요.");
			return false;
		}
		if(!userinput.pw.value)
		{
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(userinput.pw.value != userinput.pwcheck.value)
		{
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if(!userinput.name.value)
		{
			alert("이름을 입력하세요.");
			return false;
		}
		if(!userinput.callnumber.value)
		{
			alert("연락처를 입력하세요.");
			return false;
		}
	}
	
	function openConfirmid(userinput) {
		if(userinput.id.value == "") {
			alert("아이디를 입력하세요.");
			return;
		}
		
		url = "confirmId.jsp?id="+userinput.id.value;
		
		open(url,"confirm", "toolbar=no, location=no, status=no, menubar=no, scroollbar=no, resizable=no, width=300, height=200");
	}
</script>


	<font face ="Impact" color="gray" size = "20">
		Membership Application
	</font>
	</center>
</head>
<body >
<center>
	<br>
	<br>
	<form action ="membership_insert.jsp" method="post">
	<table  border="0">
<br><br><br><br>
		<tr>
			<td width="150">ID</td>
			<td align="left">
				<input type="text" name="id" placeholder="아이디" >
				&nbsp;
				<input type="button" value=" 중복확인 ">
				<br><br>
			</td>
		</tr>
		
		
		
		
		<tr>
			<td width="150">비밀번호</td>
			<td align="left">
				<input type="password" name="pw">
				<br><br>
			</td>
		</tr>
		
		
		
		<tr>
			<td width="150">비밀번호 재입력</td>
			<td align="left">
				<input type="password" > * 같은 비밀번호를 입력 하시요.
				<br>
			</td>
			
		</tr>
		
		
		
		
		<tr>
			<td width="150" >이름</td>
			<td align="left">
				<input type="text" name="name">
				<br><br>
			</td>
		</tr>
		
		
		
		
		<tr>
			<td width="150">생년월일</td>
			<td align="left">
				<input type="text" name="birth">
				<br><br>
			</td>
		</tr>
		
		<tr>
			<td >전화번호</td>
			<td align="left">
				<input type="text" name="phone" >
				<br><br>
			</td>
		</tr>
		
		
		<tr>
			<td >주소</td>
			<td align="left">
				<input type="text" name="address" >
				<br><br>
			</td>
		</tr>

		
		<tr>
		<td >E-mail</td>
		<td align="left">
				<input type=text name="email">&nbsp;&nbsp;&nbsp;@  &nbsp;&nbsp;&nbsp;      
				<select name="email2">
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select>
				<br><br>
		</td>
		</tr>

		
		

		<tr>
			<td >계좌번호</td>
				<td align="left">
					<select name="backName">
					<option value="기업">기업</option>
					<option value="하나">하나</option>
					<option value="국민">국민</option>
					<option value="제일">제일</option>
				</select>&nbsp;&nbsp;&nbsp;
		<input type=text name="backAcount"> * 계좌번호/예금주
		<br><br>
		</td>
		</tr>
		
		<br><br>
		<tr><td >등급</td>
			<td align="left">
					<select name="lev">
					<option value="실버">실버</option>
					<option value="어덜트">어덜트</option>
					<option value="주니어">주니어</option>
					<option value="employee">스태프</option>
				</select>
				<br><br>
		</td>
		</tr>
		
		
		<tr>
			<td align="center" colspan="2">
			<br><br><br><br><br><br><br><br>
			<input type="submit" value="회원가입" />
			<input type="button" value="메인으로" onclick="javascript:window.location='main.jsp'"/></td>
			<br><br>
		</td>

		
	   
	</table>
	</form>
</center>
</body>  