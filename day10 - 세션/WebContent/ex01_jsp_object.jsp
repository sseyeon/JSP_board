<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_jsp_object.jsp</title>
</head>
<body>
<%
	out.print(pageContext + "<br>");	
%>
<%--
	Attribute(속성, String이 아니라 Object를 저장하는데 사용)를 저장하는데 사용하는 객체
	 
	pageContext : 현재 페이지에서 유효한 JSP 내장객체
	request : 이전 페이지와 현재 페이지 사이에서 유효한 내장객체 (클라이언트 -> 서버)
	session : 클라이언트의 웹 브라우저가 종료되기 전까지 유효한 내장객체 . 쿠키와 달리 서버에 저장
	application : 웹 서버가 종료되거나 재시작 이전까지 서버에서 유효한 내장객체
	
	response : 이전 페이지와 현재 페이지 사이에서 유효한 내장객체 (서버 -> 클라이언트)
	out : 현재 페이지의 response에 출력하기 위한 내장객체
 --%>
 <%
 	pageContext.setAttribute("var1", "page");
 	request.setAttribute("var2", "request");
 	session.setAttribute("var3", "session");
 	application.setAttribute("var4", "app");
 	
 	// 내장객체.setAttribute(String name, Object value);
 	// 내장객체.getAttribute(String name);
 	String var1 = (String)pageContext.getAttribute("var1");	// Attribute는 Object로 저장되어 있다
	String var2 = (String)request.getAttribute("var2");
	String var3 = (String)session.getAttribute("var3");	
	String var4 = (String)application.getAttribute("var4");
	
	out.print("var1 " + var1 + "<br>");
	out.print("var2 " + var2 + "<br>");
	out.print("var3 " + var3 + "<br>");
	out.print("var4 " + var4 + "<br>");
 	
 %>
 <form action="ex01_jsp_object_result.jsp">
 	<input type="hidden" name="test" value="test">
 	<input type="submit">
 </form>

</body>
</html>