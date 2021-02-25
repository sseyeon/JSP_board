<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_add.jsp</title>
</head>
<body>
<%
	int n1 = 10;
	int n2 = 20;
	
	int result = n1 + n2;
	out.print("<hr>");
%>
<h2><%=n1 %> + <%=n2 %> = <%=result %></h2>

</body>
</html>