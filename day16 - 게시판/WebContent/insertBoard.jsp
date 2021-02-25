<%@page import="day16.*"%>
<%@page import="java.text.SimpleDateFormat, java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <p>방문자의 IP : <%=request.getRemoteAddr() %></p>
<p>작성 시점의 날짜 : <%=new SimpleDateFormat("yy-MM-dd hh:mm").format(new Date()) %> --%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class="day16.BoardVO"/>
<jsp:setProperty property="*" name="vo"/>
<%
	BoardDAO dao = new BoardDAO();
	int num = dao.getMaxNum() + 1;
	vo.setNum(num);					
	vo.setIp(request.getRemoteAddr());
	SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
	vo.setDate1(sdf.format(new Date()));
	
	int result = dao.insertBoard(vo); 
	
 	if (result == 1){
 		response.sendRedirect("read.jsp?num=" + num);
 	}
 	else {%>
	<script>
		alert("게시글이 정상적으로 등록되지 않았습니다.");
		history.go(-1);
	</script>
<%}
	
%>

<%=vo.getTitle() %><br>
<%=vo.getNum() %><br>
<%=vo.getIp() %><br>
<%=vo.getDate1() %><br>
<%=vo.getPw() %><br>
<%=vo.getText() %><br>
<%=vo.getWriter() %>
<hr>

</body>
</html>