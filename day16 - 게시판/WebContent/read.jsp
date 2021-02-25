<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>read.jsp (게시글 읽기)</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
%>
<jsp:include page="view.jsp?num=<%=num %>"/>
<%-- 지정된 번호의 게시글을 보여주는 view.jsp --%>

<%-- 광고 --%>

<jsp:include page="board.jsp"/>
<%-- 게시글의 목록을 출력하는 board.jsp --%>

</body>
</html>





