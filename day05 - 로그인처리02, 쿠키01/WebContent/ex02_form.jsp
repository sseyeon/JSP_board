<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_form.jsp </title>
</head>
<body>

<table border="1" align="center" cellpadding="5" cellspacing="0">
	<tr>
		<th colspan="2">response 객체 주요 메서드</th>
	</tr>
	<tr>
		<td>response.sendError()</td>
		<td>
			<form action="ex02_result.jsp">
				Error Code : <input name="sc" maxlength="4" size="4">
				Message : <input name="msg">
				<input type="submit">
			</form>
		</td>
	</tr>
	<tr>
		<td>response.sendRedirect()</td>
		<td>
			<form action="ex02_result.jsp">
				<input name="url" type="radio" value="http://www.naver.com">NAVER <br>
				<input name="url" type="radio" value="http://www.daum.net">Daum <br>
				<input name="url" type="radio" value="http://www.google.com">Google <br>
				직접입력 : <input name="url2"><br>
				<input type="submit" value="이동">
			</form>
		</td>
	</tr>
		
</table>
</body>
</html>