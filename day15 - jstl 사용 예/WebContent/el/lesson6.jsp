<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	font-size: 12pt;
	font-family: consolas;
	/* font-color: "#eeeeee" */
}

blockquote {
	font-size: 12pt;
	font-family: consolas;
}

h3 {
	font-color: "#ff0000";
	font-size: 13pt;
	font-weight: bold;
}
</style>
</head>
<body>
	<center>
		<h2>저장객체 접근</h2>
	</center>
	<br>
	<br>
	<table align="center" border="1" width="90%">
		<tr>
			<td><blockquote>
					<h3>\${param.name} => request.getParameter("name");</h3>

					<h3>\${member} => request.getAttribute("member");</h3>
				</blockquote></td>
		</tr>
	</table>
	<br>
	<br> 저장객체의 attribute 에 자동으로 접근하는데
	<br> 자동검색순위는 page, request, session, application 순이다
	<br>
	<br>
	<br>
	<table align="center" border="1" width="90%">
		<tr>
			<td><blockquote>
					<h3>\${member.name}</h3>
					=> <br>
					<h3>Member m = (Member)request.getAttribute("member");</h3>
					<h3>m.getName();</h3>
				</blockquote></td>
		</tr>
	</table>
	<br>
	<br> attribute 저장된 member의 name속성(또는 키)에 접근도트(.) 의 왼쪽은 Beans 이거나
	Map 타입이어야 한다
	<br>
	<br>
	<br>
	<table align="center" border="1" width="90%">
		<tr>
			<td><blockquote>
					<h3>\${list["0"]}</h3>
					=><br>
					<h3>List list = (List)request.getAttribute("list");</h3>
					<h3>list.get(0);</h3>
				</blockquote></td>
		</tr>
	</table>
	<br>
	<br> attribute 저장된 list를 가져온다
	<br> [ ]안에 값은 list의 키값 or 프로퍼티명 or 인덱스이다
	<br> [ ]의 왼쪽은 Map, Beans, 배열, List 타입이 올 수 있다
	<br>
	<br>
	<br> 여기서 알아야 할 점이 하나 있는데 EL에서는 해당값이 null이거나 공백일 경우에는
	<br> 아무 내용도 표시하지 않고 에러도 발생하지 않는다
	<br>
	<br>

</body>
</html>