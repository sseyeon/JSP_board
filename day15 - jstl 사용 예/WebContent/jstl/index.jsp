<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL</title>
<style type="text/css">
	body{
		font-weight:bold;
		font-family:Consolas;
	}
	.orange{
		color:#ff7700;
		font-weight:bolder;
	}
	.purple{
		color:#aa00aa;
		font-weight:bold;
	}
	.string{
		color:#0000ff;
		font-weight:bold;
	}
	.subsc{
		color:#005500;
		font-weight:bold;
	}
	.jstl{
		color:#117755;
		font-weight:bold;
	}
	tr {
		font-size: 17px;
		text-indent: 0.5em;
	}
	
	h1 {
		text-align: center;
	}
	
	h2 {
		text-align: center;
		color: #ff0000;
	}
	
	h4 {
		text-align: center;
	}
	
	.b {
		font-family: consolas;
		font-weight: bold;
		font-size: 20px;
		text-indent: 0.5em;
		text-align: center;
	}
	
	.bold {
		text-align: left;
		font-family: Consolas;
		font-weight: bold;
		color: blue;
	}
	
	.r {
		color: #ff0000;
	}
	
	.c {
		text-align: center;
	}
	
	input {
		font-size: 15pt;
	}
	
	select {
		font-size: 15pt;
	}
	
	li {
		text-align: left;
		font-size: 12pt;
		color: #222222;
		font-family: Consolas;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String select;
		boolean flag = request.getParameter("select") == null;
		select = (flag) ? "list.jsp" : request.getParameter("select");
		if("ex03_ori.jsp".equals(request.getParameter("name"))){
			select = "ex03_ori.jsp";
		}
		if("ex03.jsp".equals(request.getParameter("name"))){
			select = "ex03.jsp";
		}
	%>
	
	<center>
		<h1>JSTL TAG Study</h1>
	</center>
	<hr>
	<br>
	<table align="center">
		<tr>
			<td width="100%"><jsp:include page="<%=select%>" /> <br></td>
		</tr>
	</table>
	<hr>
	<br>
	<center>
		<a href="<%=request.getContextPath()%>/jstl"><button>메인 페이지로</button></a>
	</center>
	<br>
	<br>
	<br>

</body>
</html>