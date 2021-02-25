<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL TAG Study</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String select = request.getParameter("select");
%>
<center><h1>EL TAG Study</h1></center>
<hr><br>
	<table align="center">
		<tr><td width="100%">
				<center><jsp:include page="list.jsp"/></center>
		</td></tr>
	</table>
<%
	if(select!=null && select.equals("lesson4.jsp")){
		response.sendRedirect("lesson4.jsp");
	}
	else if(select!=null && !select.equals("list.jsp")){
		%><hr>
		<table align="center">
			<tr><td width="100%">
				<jsp:include page="<%=select%>"/>
			</td></tr>
		</table>
		<hr><br>
		<center>
			<a href="<%=request.getContextPath()%>/EL"><button>메인 페이지로</button></a>
		</center>
		<br><br><br>
		<%
	}else{%>
		<hr>
	<%}
%>
</body>
</html>