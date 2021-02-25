<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_login_form.jsp </title>
</head>
<body>
	
<form action="ex04_login_result.jsp" method="post"> <!-- method="get"은 내가 하고싶은 말을 주소창에 다 띄움 (엽서) -->
												   <!-- method="post" 내용을 편지봉투안에 담아서 전달 노출 x => 전달되는 경로가 다르다. 보안 강하다? x -->
	<p><input type="text" name="userid" placeholder="계정을 입력하세요"></p>
	<p><input type="password" name="userpw" placeholder="비밀번호를 입력하세요"></p>
	<p><input type="submit" value="LOGIN"></p>
</form>	
	
</body>
</html>