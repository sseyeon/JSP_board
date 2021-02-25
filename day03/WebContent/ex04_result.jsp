<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_result.jsp </title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");	//사용자가 입력한 문자열을 UTF-8로 식별하겠다.
	
	String name = request.getParameter("name");	// <input name="name" type="text">
	String age = request.getParameter("age");	// <input name="name" type="text">
	
%>
<h2><%=name %>의 나이는 <%=age %>살 입니다.</h2>

<a href="ex04_form.jsp"><button>이전 페이지로</button></a>


</body>
</html>