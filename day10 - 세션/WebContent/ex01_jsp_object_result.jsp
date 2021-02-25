<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_jsp_object_result.jsp</title>
</head>
<body>
<%
	String var1 = (String)pageContext.getAttribute("var1");	// Attribute는 Object로 저장되어 있다
	String var2 = (String)request.getAttribute("var2");
	String var3 = (String)session.getAttribute("var3");
	String var4 = (String)application.getAttribute("var4");
	
	out.print("var1 " + var1 + "<br>");
	out.print("var2 " + var2 + "<br>");
	out.print("var3 " + var3 + "<br>");
	out.print("var4 " + var4 + "<br>");

%>
</body>
</html>