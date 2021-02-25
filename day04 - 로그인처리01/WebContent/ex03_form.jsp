<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_form.jsp </title>
</head>
<body>
<h2>checkbox 값들을 배열로 받아서 출력하기</h2>
<form action="ex03_result.jsp">
	좋아하는 색깔을 선택하세요 (중복 선택 가능)<br>
	빨강 <input name="color" type="checkbox" value="빨강"><br>
	노랑 <input name="color" type="checkbox" value="노랑"><br>
	파랑 <input name="color" type="checkbox" value="파랑"><br>
	초록 <input name="color" type="checkbox" value="초록"><br>
	보라 <input name="color" type="checkbox" value="보라"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>