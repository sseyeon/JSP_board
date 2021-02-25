<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<% 
	
	if (login == null){	 // 로그인이 되어있지 않으면 정보 확인으로 넘어갈 수 없다
		response.sendRedirect(request.getContextPath());
	}
	else if (login.getUserpw().equals(request.getParameter("userpw"))){
		%>
		<h2 style="text-align:center;">개인 정보 수정 페이지</h2>
		<div style="background: antiquewhite;
					width:400px;
					text-align:center;	
					margin: auto;		
					margin-top: 20px;">	
					
		<form action="updateMember.jsp" method="post">
		<input type="hidden" name="userid" value="<%=login.getUserid() %>">	<%-- 내가 원하는  값을 사용자에게 노출 시키지 않으면서도 전달 가능--%>
		<table width="400px" align="center" border="1" cellpadding="7">
			<tr>
				<td width="40%">계정</td>
				<td><%=login.getUserid() %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="userpw"></td>
			</tr>
			<tr>
				<td>사용자 이름</td>
				<td><input name="username"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input name="age"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="남성">남성
					<input type="radio" name="gender" value="여성">여성</td>
			</tr>
		</table>
		</div>
		
		<div style="text-align:center;
					margin-top:20px">
		<a href="confirm.jsp?url=member_modify.jsp"><button>정보수정</button></a>
		<button>회원탈퇴</button>
		</div>
		</form>
	<%}
	else {
		%>
		<script>
			alert("비밀번호가 일치하지 않습니다");
			history.go(-1);
		</script>
	<%}
	
%>
</body>
</html>