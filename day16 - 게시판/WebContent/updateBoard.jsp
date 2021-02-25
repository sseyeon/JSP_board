<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day16.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class="day16.BoardVO"/>
<jsp:setProperty property="*" name="vo"/>
<%
	vo.setIp(request.getRemoteAddr());	// IP를 vo에 추가하기
	
	BoardDAO dao = new BoardDAO();
	int result = dao.updateBoard(vo);
	
	if(result == 1) { %>
		<script>
			alert("글이 정상적으로 수정되었습니다");
			location.href = "read.jsp?num=<%=vo.getNum()%>";
		</script>
	<% }
	else { %>
		<script>
			alert("글이 수정되지 않았습니다");
			history.go(-1);
		</script>
	<%} %>

</body>
</html>