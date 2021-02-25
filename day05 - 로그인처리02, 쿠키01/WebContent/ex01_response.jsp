<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01_response.jsp </title>
</head>
<body>

request : 요청, 클라이언트가 서버에게 보내는 데이터 (객체)<br>
response : 응답, 서버가 클라이언트에게 보내는 데이터 (객체)<br>

<%
	response.addCookie(new Cookie("name", "value"));	// 응답에 Cookie를 추가할 때
	response.sendError(500, "서버 내부 오류");	// 오류 코드와 메시지를 클라이언트에게 전달할 때
	response.sendRedirect("http://www.naver.com");
		// 클라이언트에게 대상 URL로 이동하라고 메시지를 전달할 때
%>

</body>
</html>