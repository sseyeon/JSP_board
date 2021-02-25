<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day15.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 회원가입 페이지 :: </title>
</head>
<body>

<%@include file="header.jsp" %>
<form action="insert.jsp" align="center">
	<table  border="1" align="center" width="400px" height="200px">
	<tr><td>사용자 아이디</td><td><input name="userid" required></td></tr>
	<tr><td>사용자 비밀번호</td><td><input name="userpw" type="password" required></td></tr>
	<tr><td>사용자 이름</td><td><input name="username" required></td></tr>
	<tr><td>사용자 나이</td><td><input name="age" required></td></tr>
	<tr><td rowspan="2">사용자 성별 </td><td><input name="gender" type="radio" value="남성" required>남성 </td></tr>
	<tr><td><input type="radio" name="gender" value="여성" required>여성</td></tr>
	<tr><td colspan="2"><input name="regist" type="submit"></td></tr>
</table>
</form>

</body>
</html>