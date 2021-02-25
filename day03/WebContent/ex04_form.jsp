<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_form.jsp </title>
</head>
<body>

	<!--  Form 태그를 이용하여 사용자에게 이름과 나이를 입력받자 -->
	<form action="ex04_result.jsp">
	
	이름 : <input name="name" type="text"><br>	<%-- java String --%>
	나이 : <input name="age" type="text"><br>
	<input type="submit">
		
	</form>
	
	
	
</body>
</html>