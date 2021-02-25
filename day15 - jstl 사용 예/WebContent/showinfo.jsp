<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify info.jsp</title>
</head>
<body>
<%@ include file="header.jsp" %>
<% 
	
	if (login == null){	// 로그인이 되어 있지 않으면 정보 확인으로 넘어갈 수 없다
		response.sendRedirect(request.getContextPath());
	}
	else{
		%>
		<h2 style="text-align:center;">개인 정보 확인 페이지</h2>
		<div style="background: antiquewhite;
					width:400px;
					text-align:center;	
					margin: auto;		<%--가운데 정렬 --%>
					margin-top: 20px;">	
		<table width="400px" align="center" border="1" cellpadding="7">
			<tr>
				<td width="40%">계정</td>
				<td><%=login.getUserid() %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>*********</td>
			</tr>
			<tr>
				<td>사용자 이름</td>
				<td><%=login.getUsername() %></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><%=login.getAge() %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%=login.getGender() %></td>
			</tr>
		</table>
		</div>
		
		<div style="text-align:center;
					margin-top:20px">
		<a href="confirm.jsp?url=member_modify.jsp">
		<button>정보수정</button></a>
		
		<a href="confirm.jsp?url=delete_member.jsp"><button>회원탈퇴</button></a>
		</div>
		
	<%}
	
%>
</body>
</html>