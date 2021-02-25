<%@page import="day15.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 검색 (하나의 페이지)</title>
</head>
<body>
<%@ page import="java.sql.*,day15.MemberVO" %>
<%@ include file="header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String type = request.getParameter("type");
	String search = request.getParameter("search");
	
	MemberDAO dao = new MemberDAO();
	MemberVO find = dao.getMember(type, search);
%>

	 <h2 align="center">회원 정보 검색</h2>
	 <form action="" method="get">
	 	<table border="1" cellpadding="7" width="300px" height="200px" align="center">
	 	
	 	<%if (find != null) { %>
		<tr><td>ID</td><td><%=find.getUserid() %></td></tr>
		<tr><td>PW</td><td>********</td></tr>
		<tr><td>사용자 이름</td><td><%=find.getUsername() %></td></tr>
		<tr><td>나이</td><td><%=find.getAge() %></td></tr>
		<tr><td>성별</td><td><%=find.getGender() %></td></tr>
		
		<%} else {%>
		<tr><th>검색 결과가 존재하지 않습니다</th></tr>
		<%} %>
		
		</table>
		<p style="text-align:center;">
	 	<select name="type">
	 		<option value="userid">계정</option>
	 		<option value="username">사용자 이름</option>
	 	</select>
	 	<input name="search">
	 	<input type="submit" value="검색">
		</p>
	 </form>

</body>
</html>