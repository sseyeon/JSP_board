<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01_color_form.jsp </title>
</head>
<%!
	String bc, c;
%>
<%
	request.setCharacterEncoding("UTF-8");

	String backColor = request.getParameter("backColor");
	String color = request.getParameter("color");
	String cookie = request.getParameter("cookie");
	
	if (request.getParameter("color") == null){
		color = "";
	}
	if (request.getParameter("backColor") == null){
		backColor = "";
	}
	

	
	switch (backColor){
	case "red" : 
		bc = "red"; break;
	case "white" : 
		bc = "white"; break;
	case "green" : 
		bc = "green"; break;
	case "purple" : 
		bc = "purple"; break;
	case "" :
		bc = "white"; break;
		
	}
	
	switch (color){
	case "red" : 
		c = "red"; break;
	case "white" : 
		c = "white"; break;
	case "green" : 
		c = "green"; break;
	case "purple" : 
		c = "purple"; break;
	case "" :
		c = "blue"; break;
	}
	
	Cookie bgcookie = new Cookie("bc", bc);
	Cookie ccookie = new Cookie("c", c);
	
	if (cookie != null){
		bgcookie.setMaxAge(86400);
		ccookie.setMaxAge(86400);
	}
	else {
		bgcookie.setMaxAge(0);
		ccookie.setMaxAge(0);
	}
	response.addCookie(bgcookie);
	response.addCookie(ccookie);
%>


<body bgcolor=<%=bc %> style="color:<%=c%>;" align="center">
2019-07-23

<%--
	1. 정해진 문서의 내용을 출력하는 페이지 (노래가사, 오늘 날짜 등등)
	2. 상단에 글자 색상, 배경 색상을 선택할 수 있는 form을 생성
	3. form의 action 속성은 비어있는 문자열 "" (자기자신에게 전달)
	4. 체크박스가 체크되어 있으면 다음번에 방문할 때에도 같은 색상 테마를 유지할 수 있는 페이지
 --%>
 
<%
	request.setCharacterEncoding("UTF-8");

	Cookie [] cookies = request.getCookies();
	String bc = null, c = null;
	
	if (cookies != null){
		for (int i = 0; i < cookies.length ; i++){
			if (cookies[i].getValue().equals("bc")) bc = cookies[i].getValue();
			if (cookies[i].getValue().equals("c")) c = cookies[i].getValue();
		}
	}
%>

<form action="">
	배경색<br>
	<input name="backColor" type="radio" value="red"> RED<br>
	<input name="backColor" type="radio" value="white"> WHITE<br>
	<input name="backColor" type="radio" value="green"> GREEN<br>
	<input name="backColor" type="radio" value="purple"> PURPLE<br>
	<hr>
	글자색<br>
	<input name="color" type="radio" value="red"> RED<br>
	<input name="color" type="radio" value="white"> WHITE<br>
	<input name="color" type="radio" value="green"> GREEN<br>
	<input name="color" type="radio" value="purple"> PURPLE<hr>
	<input type="checkbox" name="cookie" <%=cookie != null ? "checked" : "" %>> 색상 정보 저장 <br><br>
	
	<input type="submit"><br>
</form>

<a href="javascript:alert(document.cookie);">	<!-- alert 팝업창 -->
<button>쿠키 확인하기</button></a>

</body>
</html>