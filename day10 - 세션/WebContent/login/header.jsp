<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<div style="font-size:30pt;
			font-weight:bolder;
			font-family:Consolas;
			text-align:center">
<a href="<%=request.getContextPath() %>/login"
	style="text-decoration:none;
	color:burlwood;">
LOGO</a>
</div>
<%@ page import="day10.Member" %> <!-- beans클래스를 import하지 않으면 day10.Member라는 형식으로 사용가능 -->
<%
	Member m = (Member)session.getAttribute("member");
	// 세션에 저장된 회원정보가 있으면 정보를 가져오고, 없으면 null

	// 세션의 getAttribute()는 값이 있으면  값을 Object로 반환하고, 없으면 null을 반환
%>

<table align="center">
	<tr>
		<td width="50%"></td>
		<td align="right">
			<%=m != null ? m.getUserid() : "	" %>
			<a href="<%=m != null ? "logout.jsp" : "login.jsp" %>">
			<button><%=m != null ? "로그아웃" : "로그인" %></button></a>
		</td>
	</tr>
</table>