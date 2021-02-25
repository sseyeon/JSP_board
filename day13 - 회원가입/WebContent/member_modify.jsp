<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day12.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 회원 정보 수정 및 제거 ::</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%
	MemberVO m = (MemberVO)session.getAttribute("member");

	request.setCharacterEncoding("UTF-8");
	String mChoose = request.getParameter("mChoose");
	String value = request.getParameter("typeModify");
	
	
	if (mChoose == "modify"){%>
		<form action="member_modify.jsp">
		<select name="typeModify">
			<option> == 수정할 항목 선택 == </option>
			<option value="userid">아이디</option>
			<option value="userpw">비밀번호</option>
			<option value="username">사용자 이름</option>
			<option value="age">나이</option>
			<option value="gender">성별</option>
		</select>
		<input type="submit">
		</form>
	
	<% }
	
	switch(value){
	case "userid":%>
		<form action="">
		<input name="userid" placeholder="새 계정을 입력하세요" required>
		<input type="submit">
		</form>
		<%m.setUserid("userid");break; %><%
	case "userpw":%>
		<form action="">
		<input name="userpw" placeholder="새 비밀번호를 입력하세요" required>
		<input type="submit">
		</form>
		<%m.setUserpw("userpw");break; %><%
	case "username":%>
		<form action="">
		<input name="username" placeholder="새 이름을 입력하세요" required>
		<input type="submit">
		</form>
		<%m.setUsername("username");break; %><%
	case "age":%>
	<form action="">
	<input name="age" placeholder="수정할 나이를 입력하세요" required>
	<input type="submit">
	</form>
	<%m.setAge("age");break; %><%
	case "gender":%>
	<form action="">
	<input name="gender" placeholder="새 성별을 입력하세요(남성/여성)" required>
	<input type="submit">
	</form>
	<%m.setGender("gender");break; %><%
	}
%>

</body>
</html>