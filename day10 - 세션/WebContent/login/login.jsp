<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<form action="login_check.jsp" method="post">
	<table align="center">
		<tr><td>
		<input name="userid" placeholder="계정을 입력하세요" required>
		</td></tr>
		<tr><td>
		<input name="userpw" type="password" placeholder="비밀번호를 입력하세요" required>
		</td></tr>
		<tr><td align="center">
		<input type="submit" value="로그인">
		</td></tr>
	</table>
</form>
</body>
</html>