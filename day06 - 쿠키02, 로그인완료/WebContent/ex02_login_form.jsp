<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_login_form.jsp</title>
</head>
<body>
<%
	Cookie [] cs = request.getCookies();
	String storeid = null;
	
	if (cs != null){
		for (Cookie c : cs){	// 모든 쿠키중에서
			if (c.getName().equals("storeid"))
				storeid = c.getValue();			
		}
	}
	
%>
<form action="ex02_login_check.jsp" method="post">
	<p><input type="text" name="userid" placeholder="계정을 입력하세요"></p>
	<p><input type="password" name="userpw" placeholder="비밀번호를 입력하세요"></p>
	<p><input type="checkbox" name="storeid">아이디 저장 </p>
	<p><input type="submit" value="로그인"></p>
</form>
</body>
</html>