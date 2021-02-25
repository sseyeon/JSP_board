<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_result.jsp </title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name, userpw, gender, school, comment;
	
	name = request.getParameter("name");
	userpw = request.getParameter("userpw");
	gender = request.getParameter("gender");
	school = request.getParameter("school");
	comment = request.getParameter("comment");
	
%>
<h2>request.getParameter() 를 이용하여 값을 출력하기</h2>
<ul>
	<li><%=name %></li>
	<li><%=userpw %></li>
	<li><%=gender %></li>
	<li><%=school %></li>
	<li><%=comment %></li>
</ul>

<hr>

<%@ page import="java.util.Enumeration, java.util.Map" %>
<%-- directive : page, include, taglib --%>

<ul>
<%
	Enumeration <String> enu = request.getParameterNames();	
	// enu에는 이전 페이지에서 전달한 모든 파라미터의 변수 이름이 문자열 형태로 저장되어 있다.
	
	while(enu.hasMoreElements()) {
		String var = enu.nextElement();	// 확인하지 않은 변수 이름 중 하나를 뽑아서
		String value = request.getParameter(var);	// 그 이름으로 값을 value에 저장 (그 이름으로 값을 추출)
		%>
		<!-- 스크립틀릿 중간에 HTML을 사용하기 위해서 -->
		<li><%=var %> : <%=value %></li>
		<%
	}
%>
</ul>
<hr>
<ul>
<%	// Hashtable <Key, value>
	Map <String, String[]> map = request.getParameterMap();
	// map 에는 변수 이름과 변수 값이 같이 저장되어 있다, key : 변수 이름, value : 변수 값
	
	java.util.Set <String> keys = map.keySet();
	// key만 따로 뽑아서 Keyset을 keys에 저장
	
	for (String key : keys){	//keys안의 각각의 문자열 하나를 key라고 할 때
		String value2 = map.get(key)[0]; //key를 이용해서 value를 구하면 value의 자료형이 String[]
		out.print("<li>" + key + " : " + value2 + "</li>");
	}
	
%>
</ul>

</body>
</html>