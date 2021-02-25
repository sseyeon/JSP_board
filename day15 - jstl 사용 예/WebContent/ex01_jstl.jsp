<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_jstl.jsp</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL을 사용하기 위한 선언문 --%>

<c:if test="${empty param.age }"><%-- test 조건식 --%>
	<form action="" method="post">
		<input name="age" placeholder="나이를 입력하세요	">
		<input type="submit" value="입력">
	</form>
</c:if>


<c:if test="${param.age >= 20 }">
	<h2>당신은 성인입니다.</h2>
	<a href="javascript:history.go(-1)">
	<button>이전 페이지</button></a>
</c:if>

<c:if test="${param.age < 20 }">
	<h2>당신은 미성년자입니다.</h2>
	<a href="javascript:history.go(-1)">
	<button>이전 페이지</button></a>
</c:if>
<%
	ArrayList <String> al = new ArrayList<String>();
	al.add("이지은");
	al.add("홍진호");
	request.setAttribute("list", al);
%>
<hr>
jstl:foreach 사용하기<br>
<c:forEach var="name" items="${ list }">
	${name }
</c:forEach>

<%
	for(String name : al) {
		out.print(name + "<br>");
	}
%>

<%-- <c:redirect url="http://www.naver.com"/> --%>

<%--  ↑ 얘 같은거
 <%
	response.sendRedirect("http://www.daum.net");
 %>
--%>




















</body>
</html>