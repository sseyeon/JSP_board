<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_session_invalidate.jsp</title>
</head>
<body>
<%
	//session.setMaxInactiveInterval(600);	// 세션의 유효시간을 600초로 지정한다
	//session.setMaxInactiveInterval(0);		// 세션의 유효시간을 무한대로 설정한다
	session.invalidate();					// 세션을 무효화한다
%>
<script>
	alert("세션이 삭제되었습니다.");	
	location.href= "ex02_session.jsp";
</script>
</body>
</html>