<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<title>ȸ������</title>
</head>

<center>
<font size="20" face="impact">MEMBER LIST</font>
</center>

<body>
<table align="center" width="500" border="1">
	<tr>
	<td align="center" colspan="2">��ü ȸ�� ��(${count})</td>
	</tr>
	<tr>
	<td>ID</td>
	<td>�̸�</td>
	</tr>
</table>
<c:if test="${count==0}">
<table align="center" width="700" border="1">
	<tr>
	<td align="center" colspan="2">
		��ϵ� ȸ���� �����ϴ�.
	</td>
</table>
</c:if>

<table align="center" width="700" border="1">
<c:if test="${count>0}">
<c:forEach var="article" items="${articleList}">
	<tr>
	<td>${article.get}</td>
	<td>

</c:forEach>
</c:if>
</table>

</body>