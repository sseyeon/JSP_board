<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_login.jsp </title>
</head>
<body>

<form action="ex03_check.jsp" method="post">
	<table align="center" cellpadding="7" cellspaceing="0">
		<tr>
			<td> <input name="userid" placeholder="계정을 입력하세요" required> </td>
		</tr>
		<tr>
			<td> <input name="userpw" type="password" placeholder="비밀번호를 입력하세요" required></td>
		</tr>
		<tr>
			<td align="center"><input type="submit"></td>
		</tr>
	</table>
</form>
</body>
</html>