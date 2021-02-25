<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp (새 글 쓰기)</title>
</head>
<body>
<form action="insertBoard.jsp" method="post">
<table border="0" align="center">
	<tr>
		<td align="center"><input name="title" placeholder="제목">
			<input name="writer" placeholder="작성자"></td>	
	</tr>
	<tr>
		<td><textarea name="text" rows="10" cols="70" style="resize: none;"></textarea></td>
	</tr>
	<tr>
		<td>
		<div style="text-align: right;">
		<input name="pw" placeholder="비밀번호 "> <input type="submit" value="등록하기">
		</div>
		</td>
	</tr>
</table>

</form>
</body>
</html>