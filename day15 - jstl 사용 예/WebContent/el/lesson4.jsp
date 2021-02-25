<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Lesson 4</title>
</head>
<body>
<jsp:include page="index.jsp"/>
<center>
<h4>param.name</h4>
<h4>param['name']</h4>
<hr><br>
<form action="lesson4.jsp" method="post">
이름 : <input type="text" name="name" value="${param['name'] }">
<input type="submit" value="확인">
</form>
<br>
<h3>이름은 ${empty param.name ? "이름없음기본값": param.name }입니다</h3>

</center>
</body>
</html>