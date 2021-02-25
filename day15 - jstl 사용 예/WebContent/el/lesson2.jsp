<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="el_test.Customer , java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Lesson 2</title>
</head>


<body>

<center><h3>표현언어 / Expression Language</h3></center>
<h4>1. 표현언어의 개념</h4>
<blockquote>
	표현언어는 값을 표현하는데 사용되는 스크립트 언어이다
	(JSP 2.0 규약에서 추가 됨)
</blockquote>

<h4>2. 표현언어의 기능</h4>
<blockquote>
	<ol>
		<li>JSP 기본 객체가 제공하는 영역의 속성 사용가능<br>
		   (page, request, session, application)<br>
		<li>집합객체 접근방법 제공
		<li>수치 관계 논리연산자 제공
		<li>자바클래스 메서드 호출가능
		<li>EL 자체 기본 객체 제공
	</ol>
</blockquote>

<h4>3. 표현 언어 사용 방법</h4>
<blockquote>
	<p><sub><h3>$ {expr }</h3></sub></p>
	위 expr부분에 표현언어로 정의한 문법에 따라 값을 표시하게 된다
	Attribute, request의 파라미터 등에 접근 가능하다
	.(dot)연산자를 사용하여 Attribute에 저장된 Map이나 Beans 내부의 값에도 접근이 가능
</blockquote>

</body>
</html>