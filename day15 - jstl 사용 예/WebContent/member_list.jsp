<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<%@page import="day15.*" %>
<%
	if (login == null || !login.getUserid().equals("root")){
		%>
		<script>
			alert("아무나 접근할 수 없는 페이지입니다");
			location.href="<%=request.getContextPath()%>";
		</script>
		<%
	}
	
	MemberDAO dao = new MemberDAO();
	ArrayList <MemberVO> list = dao.getMemberList();
%>
	<table border="1" cellpadding="7" cellspacing="0" align="center">
		<tr>
			<th>NO</th>
			<th>계정</th>
			<th>비밀번호</th>
			<th>사용자이름</th>
			<th>나이</th>
			<th>성별</th>
		</tr>
	<%
	for (int i = 0; i < list.size(); i++){
		MemberVO tmp = list.get(i);
	%>
	<tr><td><%=i + 1 %></td>
		<td><a href="member_search.jsp?type=userid&search=<%=tmp.getUserid() %>">
		<%=tmp.getUserid() %></a></td>
		<td><%=tmp.getUserpw() %></td>
		<td><%=tmp.getUsername() %></td>
		<td><%=tmp.getAge() %></td>
		<td><%=tmp.getGender() %></td>
	<%
	}%>
		
	</table>
</body>
</html>