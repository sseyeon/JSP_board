<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::: LOGIN :::</title>
</head>
<body>
<%@ include file="header.jsp" %>

<form action="login_check.jsp" method="post">
<table align="center" border="0" cellpadding="7" cellspacing="0">
	<tr>
		<td><input name="userid" placeholder="계정 입력" required></td>
	</tr>
	<tr>
		<td><input name="userpw" type="password" placeholder="비밀번호 입력" required></td>
	</tr>
	<tr>
		<td align="center"><input type="submit" value="LOGIN"></td>
	</tr>
</table>
</form>

<hr>
<!-- 회원 가입 링크 -->
<div style="text-align:center;">
<a href="join.jsp">
<button>회원가입</button></a>
</div>





</body>
</html>