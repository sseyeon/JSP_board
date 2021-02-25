<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_form.jsp </title>
</head>
<body>

<form action="ex02_result.jsp">
	<input name="name" type="text" placeholder="이름 입력"><br>
	<input name="userpw" type="password" placeholder="비밀번호 입력"><br>
	남성 <input name="gender" value="남성" type="radio">
	여성 <input name="gender" value="여성" type="radio"><br>
	<select name="school">
		<option>===최종 학력을 선택하세요===</option>
		<option value="초등학교">초등학교</option>
		<option value="중학교">중학교</option>
		<option value="고등학교">고등학교</option>
		<option value="대학교">대학교</option>
		<option value="기타">기타</option>
	</select><br>
	<textarea name="comment" placeholder="남길 말을 입력하세요"></textarea>
	<input type="submit" value="전송">

</form>
</body>
</html>