<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex05_result.jsp </title>
</head>
<body>
<h1>두 수의 덧셈 계산하는 페이지</h1>
<%
	request.setCharacterEncoding("UTF-8");

	String v1 = request.getParameter("n1");	// <input name="n1">
	String v2 = request.getParameter("n2");	// <input name="n2">
	
	// request.getParameter() 메서드는 찾는 변수가 없으면 null을 반환
	
	int n1 = 0, n2 = 0, result = 0;
	
	if(v1 != null && v2 != null){
		n1 = Integer.parseInt(v1);
		n2 = Integer.parseInt(v2);
		result = n1 + n2;
	}
%>	
<%=n1 %> + <%=n2 %> = <%=result %><br><br>

<a href="ex05_form.jsp"><button>입력 페이지로 돌아가기</button></a>
	
</body>
</html>