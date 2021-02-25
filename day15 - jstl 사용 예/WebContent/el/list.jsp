<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>
<center><h3>페이지를 선택하세요</h3></center>
	<form name="select" action="index.jsp" method="post">
		<select name="select">
			<option value="list.jsp">---선 택---</option>
			<option value="lesson1.jsp">Lesson 1 </option>
			<option value="lesson2.jsp">Lesson 2 </option>
			<option value="lesson3.jsp">Lesson 3 </option>
			<option value="lesson4.jsp">Lesson 4 </option>
			<option value="lesson5.jsp">Lesson 5 </option>
			<option value="lesson6.jsp">Lesson 6 </option>
		</select>
		<input type="submit" value="GO !!">
	</form>
<br>
<br>
</body>
</html>