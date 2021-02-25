<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_result.jsp </title>
</head>
<body>
<%
	String param = request.getParameter("page");
	
	switch(param){
	case "1" :	// history.go()
		%>
		<!-- JavaScript 코드를 작성하는 영역 태그 -->
		<script>
			history.go(-1);	// 한 단계 이전 페이지로 이동합니다
		</script>
		<%
		break;
	case "2" :	// location.href = "";
	%>
	<script>
		location.href = "http://www.kgitbank.com";
		// 웹 브라우저 주소창에 지정된 주소를 입력시킴
	</script>
		<%
		break;
	case "3" :
		response.sendRedirect("http://www.google.com");
		break;
	case "4" : 
		%>
			<jsp:forward page="ex04_forward.jsp"/>
			<%-- JSP 액션 태그, HTML과 유사하지만 JSP코드를 처리할 수 있는 문법 --%>
		<% 
		break;
	}
%>
</body>
</html>