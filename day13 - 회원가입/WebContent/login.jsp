<%@page import="day12.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: LOGIN PAGE ::</title>
</head>
<body>
<%@ include file="header.jsp" %>
<form action="login_check.jsp" method="post" align="center">
	<p><input name="userid" placeholder="계정 입력" required></p>
	<p><input name="userpw" placeholder="비밀번호 입력" type="password" required></p>
	<p><button>로그인</button></p>
</form>
	
</body>
</html>