<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_jsp_basic.jsp</title>
</head>
<body>
	
	<!-- HTML 주석, 웹 브라우저에서 확인할 수 있다 -->
	
	<%-- JSP 주석, 웹 브라우저에서 확인할 수 없다 --%>
	
	<%
		// 자바 한 줄 주석
		/* 자바 범위 주석 */
	%>
	
	<p>&lt;% %> : 스트립틀릿, 자바 언어를 이용하여 서버 측 코드를 진행하는 영역</p>
	
	<p>&lt;%! %> : 선언부(Declaration), 메서드 선언, 전역 변수 선언</p>
	
	<p>&lt;%= %> : 표현식(Expression), 값을 출력하는 영역</p>
	
	
</body>
</html>