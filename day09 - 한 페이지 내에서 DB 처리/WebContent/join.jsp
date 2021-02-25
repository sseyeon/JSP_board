<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::: 회원 가입 정보 입력 :::</title>
</head>
<body>
<%@ include file="header.jsp" %>
<form action="insert.jsp" method="post">
	<table align="center">
		<tr>
			<th colspan="2">회원 가입</th>
		</tr>
		<tr>
			<td>ID</td>
			<td><input name="userid" required></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input name="userpw"  type="password" required></td>
		</tr>
		<tr>
			<td>사용자이름</td>
			<td><input name="username" required></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input name="age" required></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input name="gender" value="남성" type="radio" required>남성
				<input name="gender" value="남성" type="radio" required>여성</td>
		</tr>
		<tr>
			<td colspan="2"><hr></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="가입"></td>
		</tr>
	</table>
</form>
</body>
</html>
