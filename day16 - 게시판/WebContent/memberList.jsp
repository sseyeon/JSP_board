<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day16.*, java.util.ArrayList"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberList.jsp</title>
</head>
<body>
<table border="1" align="center" cellpadding="7" cellspacing="0">
	<tr>
		<th>No</th>
		<th>계정</th>
		<th>비밀번호</th>
		<th>사용자 이름</th>
		<th>나이</th>
		<th>성별</th>
	</tr>
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberVO> list = dao.getMemberList();
	
	for (int i = 0; i <list.size(); i++){ 
		MemberVO vo = list.get(i);
	%>
		<tr>
		<th><%=i + 1 %></th>
		<th><%=vo.getUserid() %>
		<th>*****</th>
		<th><%=vo.getUsername() %></th>
		<th><%=vo.getAge() %></th>
		<th><%=vo.getGender() %></th>
		</tr>
	<% } %>
</table>
</body>
</html>