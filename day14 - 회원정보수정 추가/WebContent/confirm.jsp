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
<div style="text-align: center;">
<p>비밀번호를 다시 입력해주세요</p>
<%
	request.setCharacterEncoding("UTF-8");

	String url = request.getParameter("url");
%>
<form action="<%=url %>" method="post">
	<input name="userpw" type="password" required>
	<button>확인</button>
</form>
</div>
</body>
</html>