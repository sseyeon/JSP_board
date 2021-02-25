<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_color_result.jsp</title>
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

</body>
</html>