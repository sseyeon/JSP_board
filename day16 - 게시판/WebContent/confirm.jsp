<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String url = request.getParameter("url");
	String num = request.getParameter("num");
	if(url == null || num == null){
		%>
		<script>
			alert("잘못된 요청입니다");
			history.go(-1);
		</script>
		<%
	}
	String menu = null;
	if("modifyBoard.jsp".equals(url)) {
		menu = "수정";
	}
	else if("deleteBoard.jsp".equals(url)) {
		menu = "삭제";
	}
%>
<jsp:include page="view.jsp?num=<%=num %>"/>

<form action="<%=url %>" method="post">
	<div style="text-align:center;">
		<h2>글을 <span style="color: red;"><%=menu %></span>하려면, 비밀번호를 입력해주세요</h2>
		<input name="pw" type="password" required>
		<input name="num" type="hidden" value="<%=num %>">
		<input type="submit" value="<%=menu%>">
	</div>
</form>
<br>
<jsp:include page="board.jsp"/>
</body>
</html>


