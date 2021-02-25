<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, el_test.Customer" %>
<%
	ArrayList <String> singer = new ArrayList<String>();
	singer.add("소녀시대");
	singer.add("레드벨벳");
	singer.add("트와이스");
	request.setAttribute("singer", singer);
	
	Customer[] customer = new Customer[2];
	for(int i=0;i<customer.length;i++){
		customer[i] = new Customer();
	}
	
	customer[0].setName("유재석");
	customer[0].setEmail("yu@mudo.com");
	customer[0].setPhone("010-1111-1111");
	
	customer[1].setName("박명수");
	customer[1].setEmail("gpark@mudo.com");
	customer[1].setPhone("010-2222-2222");
	request.setAttribute("customer", customer);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Lesson 3</title>
</head>
<body>
<ul>
	<li>${singer[0]}, ${singer[1] }, ${singer[2] }</li>
</ul>

<ul>
	<li>이름 : ${customer[0].name}</li>
	<li>메일 : ${customer[0].email}</li>
	<li>전화 : ${customer[0].phone}</li>
</ul>

<ul>
	<li>이름 : ${customer[1].name}</li>
	<li>메일 : ${customer[1].email}</li>
	<li>전화 : ${customer[1].phone}</li>
</ul>


</body>
</html>