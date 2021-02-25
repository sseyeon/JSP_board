<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core Tag</title>
<style type="text/css">
tr{
	font-size:17px;
	text-indent:0.5em;
}
.b{
	font-family:consolas;
	font-weight:bold;
	font-size:20px;
	text-indent:0.5em;
}
</style>
</head>
<body>
<table align="center" border="1" cellspacing="0" cellpadding="3" width="600">
	<tr>
		<th>태그</th>
		<th>설명</th>
	</tr>
	<tr>
		<th></th>
		<th></th>
	</tr>
	<tr>
		<td class="b">c:set</td>
		<td>변수에 값을 설정한다</td>
	</tr>
	<tr>
		<td class="b">c:remove</td>
		<td>변수에 설정된 값을 제거한다</td>
	</tr>
	<tr>
		<td class="b">c:if</td>
		<td>조건에 따라 처리를 다르게 할 때 사용한다</td>
	</tr>
	<tr>
		<td class="b">c:choose</td>
		<td>여러 조건에 따라 처리를 다르게 할 때 사용한다</td>
	</tr>
	<tr>
		<td class="b">c:forEach</td>
		<td>반복 처리를 위해서 사용한다</td>
	</tr>
	<tr>
		<td class="b">c:forTokens</td>
		<td>구분자로 분리된 각각의 토큰을 처리한다</td>
	</tr>
	<tr>
		<td class="b">c:Import</td>
		<td>외부의 자원을 url지정하여 가져다 사용한다</td>
	</tr>
	<tr>
		<td class="b">c:redirect</td>
		<td>지정한 경로로 이동한다</td>
	</tr>
	<tr>
		<td class="b">c:url</td>
		<td>url을 재 작성한다</td>
	</tr>
	<tr>
		<td class="b">c:out</td>
		<td>데이터를 출력할 때 사용하는 태그, 표현식으로 대체 가능</td>
	</tr>
	<tr>
		<td class="b">c:catch</td>
		<td>예외처리에 사용한다</td>
	</tr>
</table>
</body>
</html>