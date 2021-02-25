<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_session.jsp </title>
</head>
<body>
<%
	String text = (String)session.getAttribute("text");
	// 세션에서 text라는 이름의 오브젝트를 가져와서 String으로 변환하고 저장
%>
<form action="ex02_session_result.jsp">
	<input type="text" name="text" value="<%= text != null ? text : "" %>">
	<input type="submit" value="전송">
</form>
</body>
</html>