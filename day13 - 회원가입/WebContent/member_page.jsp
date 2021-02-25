<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day12.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 회원 전용 페이지 ::</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br>
<form action="">
<table align="center">
	<tr>
	<td> = 회원 전용 페이지 = </td>
	</tr>
	<tr> 
		<td><input name="mChoose" type="radio" value="modify" required> 회원 정보 수정</td>
	</tr>
	<tr> 
		<td><input name="mChoose" type="radio" value="remove" required> 회원 탈퇴</td>
	</tr>
	<tr> 
		<td><input name="mChoose" type="radio" value="memberlist" required> 회원 정보 확인</td>
	</tr>
	<tr> 
		<td align="center"><input type="submit"></td>
	</tr>
</table>
</form>

<%
	request.setCharacterEncoding("UTF-8");

	String mChoose = request.getParameter("mChoose");
	
	if (mChoose == "modify"){%>
		<form action="member_modify.jsp">
		</form>
	
	<% }
	else if (mChoose == "remove"){%>
	<form action="member_remove.jsp">
	</form>
	<%}
	else if (mChoose == "memberlist"){%>
		<form action="member_list.jsp">
		</form>
	<%}
%>
</body>
</html>