<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01_parameter.jpg </title>
</head>
<body>

	request.getParameter("name") : 요청 객체에 전달된 단일 문자열을 반환한다.<br><br>
	request.getParameterValues("name") : 전달된 문자열 배열을 반환한다.<br><br>
	request.getParameterNames() : 파라미터의 변수 이름들을 반환한다.<br><br>
	<br><br>
	
	input type에 따라서 파라미터의 자료형이 결정된다<br><br>
	type="text", "password", "radio", select, textarea => 문자열
	
	type="checkbox" 이고 하나의 변수 이름에 여러 값이 있을 경우 => 배열
	
	전달된 여러 파라미터를 한번에 처리하기 위해서, Collection Framework를 사용하기도 한다
	

</body>
</html>