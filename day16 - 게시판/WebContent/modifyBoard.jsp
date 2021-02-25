<%@page import="day16.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
수정 페이지
<%
	request.setCharacterEncoding("UTF-8");
	String pw = request.getParameter("pw");		// 파라미터의 사용자 입력값
	String num = request.getParameter("num");
	
	BoardDAO dao = new BoardDAO();				
	BoardVO ori = dao.getBoard(num != null ? Integer.parseInt(num) : 0);
	// DB에 저장된 데이터
	
	if(!ori.getPw().equals(pw)) {	// DB의 값과 사용자 입력값이 일치하는지 비교
		%>
			<script>
				alert("비밀번호가 일치하지 않습니다");
				history.go(-1);
			</script>
		<%
	}
	else {	
			
%>
<form action="updateBoard.jsp" method="post">
		<input type="hidden" name="num" value="<%=num%>">
	<table cellpadding="7" cellspacing="0" align="center">
		<tr>
			<td><input name="title" placeholder="제목" value="<%=ori.getTitle() %>" required></td>
		</tr>
		<tr>
			<td><input name="writer" placeholder="작성자" value="<%=ori.getWriter() %>" required></td>
		</tr>
		<tr>
			<td>
				<textarea name="text" rows="10" cols="70" style="resize: none;" required><%=ori.getText() %></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<div style="text-align: right;">
					<input type="password" name="pw" placeholder="비밀번호" required>
					<input type="submit" value="수정">
				</div>
			</td>
		</tr>
	</table>
</form>
<% } %>





</body>
</html>