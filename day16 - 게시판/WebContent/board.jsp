<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day16.*, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD</title>
</head>
<style>
h1 {
	text-align: center;
	font-family: Comic Sans MS;
	color: chocolate;
	font-size: 50pt;
	font-weight: bolder;
}

table {
	margin: auto;	<%--가운데정렬--%>
}

a {
	text-decoration: none;
	color: gray;
}

.title{
	font-weight: bolder;
	font-family: 굴림 보통;
	color: chocolate;
	background: antiquewhite;
}
</style>
<body>

<table border="1" width="700px" cellpadding="7" cellspacing="0">
	<tr>
		<th>No</th>
		<th width="50%">제목</th>
		<th>작성자</th>
		<th>작성날짜</th>
		<th>IP</th>


<%
	BoardDAO dao = new BoardDAO();
	ArrayList <BoardVO> list = dao.getBoardList();
	
	for(int i = list.size() - 1; i >= 0; i--) { 
		BoardVO vo = list.get(i);
	%> 
	<tr>
		<td><%=vo.getNum() %></td>
		<td class="title">
			<a href="read.jsp?num=<%=vo.getNum()%>"><%=vo.getTitle() %></a>
			</td>
		<td><%=vo.getWriter() %></td>
		<td><%=vo.getDate1() %></td>
		<td><%=vo.getIp() %></td>
	</tr>
<% } %>
</table>
<div align="right" style="width: 700px;
						 margin-top: 20px;">
	<a href="write.jsp">
	<button>쓰기</button></a>
</div>
</body>
</html>