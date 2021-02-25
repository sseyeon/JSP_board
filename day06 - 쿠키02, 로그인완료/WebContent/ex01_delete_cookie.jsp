<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_delete_cookie.jsp</title>
</head>
<body>
<%
	Cookie c = new Cookie("text", null);
	// 기존 쿠키를 덮어쓰기 위한 새로운 쿠키 객체 생성
	
	c.setMaxAge(0);	// 쿠키의 유효시간을 0으로 설정
	response.addCookie(c);	
%>
<script>
	alert("쿠키를 삭제했습니다.");
	location.href = "ex01_cookie_form.jsp";
	// history.go(-1);
</script>


</body>
</html>