<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>read.jsp (게시글 읽기)</title>
</head>
<style>
h1.title {
	text-align: center;
	font-family: Comic Sans MS;
	color: chocolate;
	font-size: 60pt;
	font-weight: bolder;
}
h1{
	text-align: center;
}
table{
	margin: auto;
}
a {
	text-decoration: none;
}
td.title{
	font-size: 16pt;
	font-weight: bolder;
	font-family: HYPost;
	color: chocolate; 
	margin-bottom: 20px;
}
td{
	font-size: 8pt;
	color: #555555;
	font-weight: bolder;
	font-family: 나눔고딕;
	margin-bottom: 20px;
}
td.text {
	font-size: 10pt;
	color: black;
	font-weight: bolder;
	font-family: 나눔고딕;
	margin-bottom: 20px;
}
</style>
<body>
<%@ page import="day16.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String tmp = request.getParameter("num");
	int num = 0;
	if(tmp == null){%>
		<script>
			alert("게시글 번호가 지정되지 않았습니다");
			location.href = "board.jsp";
		</script>
	<% }
		
	else {
		num = Integer.parseInt(tmp);
		BoardDAO dao = new BoardDAO();
		BoardVO vo = dao.getBoard(num);
%>
<table border="0" style="margin: auto;" width="700px">
	<tr>
		<td class="title" width="70%" colspan="3">
			<p><%=vo.getTitle() %></p>
		</td>
	</tr>
	<tr>
		<td>작성자 : <%=vo.getWriter() %></td>
		<td>작성일자 : <%=vo.getDate1() %></td>
		<td>IP : <%=vo.getIp() %></td>
	</tr>
	<tr>
		<td class="text" colspan="3">
			<hr><blockquote>
				<%=vo.getText().replace("\n", "<br>")%>
				</blockquote><hr>
		</td>
	</tr>
	<%--confirm.jsp를 작성하여 수정 혹은 삭제 시 글 비밀번호를 확인하는 내용 추가 --%>
	<tr>
		<td align="right" colspan="3">
			<a href="confirm.jsp?url=modifyBoard.jsp&num=<%=vo.getNum()%>">
			<button>수정</button></a>
			
			<a href="confirm.jsp?url=deleteBoard.jsp&num=<%=vo.getNum()%>">
			<button>삭제</button></a>
		</td>
	</tr>
</table>

<% } %>
</body>
</html>





