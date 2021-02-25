<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day12.*"%>
<title>:: LOGO ::</title>
<div style="text-align:center;
			font-size:40pt;
			font-family:Comic Sans MS;
			color:green;">
			
<%-- request.getContextPath()는 주소창의 요청에서 현재 문서 파일을 제외한 경로를 문자열로 반환
	http://localhost:8080/day13 --%>
<a href="<%=request.getContextPath() %>" style="text-decoration:none;">	
SSEYEON</a></div>		

<%
	MemberVO login = (MemberVO)session.getAttribute("login");
%>
<%
	if (login != null){	// 세션에 정보가 있으면
		%>
			<a href="<%=login.getUserid().equals("root") ? "member_list.jsp" : "showinfo.jsp" %>">
			
			<%=login.getUserid() %></a>(<%=login.getUsername() %>)
			<% } %>


<table align="center" width="90%">
	<tr>
		<td align="right">
			<%=login != null ? login.getUserid() : "      " %> 
			<a href="<%=login != null ? "logout.jsp" : ""%>"
			style="text-decoration:none;
			color:green;"> <%=login != null ? "로그아웃" : "로그인" %></a>
		</td>
	</tr>
	
</table>
<hr>
<table align="center">
	<tr>
		<td>
			<a href="login.jsp">로그인</a> | 
		</td>
		<td> 
			<a href="join.jsp">회원 가입</a> | </td>
		<td> 게시판 |</td>
	</tr>
</table>
<hr>