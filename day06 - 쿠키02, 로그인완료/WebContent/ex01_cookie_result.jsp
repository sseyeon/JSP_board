<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_cookie_result.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String text = request.getParameter("text");
	if (text == null || "".equals(text)){
		response.sendRedirect("ex01_cookie_form.jsp");		
	} else {
		text = text.replace(" ", "_");	// 파라미터가 공백 문자를 가진다면, 쿠키에 추가하기 전에 다른 문자로 교체
	}
	
	
	out.print("<h2>text : " + text + "</h2>");
	
	
	Cookie mycookie = new Cookie("text", text);
//	Cookie 변수이름 = new Cookie(쿠키이름, 쿠키값);	전부 다 문자열 . 쿠키는 클라이언트에 저장하는 값

	mycookie.setMaxAge(86400);	// 쿠키의 유효시간을 하루로 설정 (60 * 60 * 24)
	
	//mycookie.setDomain("/");	// 사이트 내에서 쿠키의 유효 범위를 설정
	
	response.addCookie(mycookie);	// 클라이언트에게 보낼 응답에 쿠키를 추가
	
%>
<hr>

</body>
</html>