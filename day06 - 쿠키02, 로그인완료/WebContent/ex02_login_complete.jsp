<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_login_complete.jsp</title>
</head>
<body>
<%!
	String [] ids = {"root", "test", "qqq"};
	String [] pws = {"1", "2", "3"};
	String [] names = {"이름1", "이름2", "이름3"};
%>

<%
	String userid = request.getParameter("userid");
	String username = null;
	
	for (int i = 0; i < ids.length; i++){
		if (ids[i].equals("userid")){
			String username = names[i];
		}
	}
%>

<%=username %>님 환영합니다! <br>
<a href="ex02_login_form.jsp"><button>로그인 페이지로 돌아가기</button></a>

</body>
</html>