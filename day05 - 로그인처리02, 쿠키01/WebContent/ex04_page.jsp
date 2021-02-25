<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_page </title>
</head>
<body>
<form action="ex04_result.jsp" method="post">
	<select name="page">
		<option> === 페이지 이동 방법 선택 === </option>
		<option value="1"> JavaScript : history.go()</option>
		<option value="2"> JavaScript : location.href</option>
		<option value="3"> JSP : response.sendRedirect()</option>
		<option value="4"> JSP : Forward</option>
	</select>
	<input type="submit">
</form>
</body>
</html>