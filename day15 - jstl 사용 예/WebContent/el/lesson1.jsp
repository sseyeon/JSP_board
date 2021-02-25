<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="el_test.Customer , java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Lesson 1</title>
</head>

<%
	Customer customer = new Customer();
	customer.setName("성동일");
	customer.setEmail("same_castle@neighbor.com");
	customer.setPhone("010-1111-1111");
	request.setAttribute("customer", customer);
	
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("name","콜벳");
	map.put("maker", "쉐보레");
	request.setAttribute("car", map);
%>

<body>
<h2>표현 언어</h2>

<ul>
	<li>이름 : ${customer.name}</li>
	<li>메일 : ${customer.email}</li>
	<li>전화 : ${customer.phone}</li>
</ul>
<ul>
	<li>자동차 : ${car.name}</li>
	<li>제조사 : ${car.maker}</li>
</ul>
<h2>표현식</h2>
<ul>
	<li>이름 : <%=((Customer)(request.getAttribute("customer"))).getName() %></li> 
</ul>
<ul>
	<li>자동차 : <%=((HashMap<String,String>)request.getAttribute("car")).get("name") %></li>
	<li>제조사 : <%=((HashMap<String,String>)request.getAttribute("car")).get("maker") %></li>
</ul>

</body>
</html>