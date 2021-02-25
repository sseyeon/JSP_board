<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	BODY,TD,DIV,TEXTAREA,center,pre,blockquote {font-size:15pt;font-family:consolas;align:center"}
</style> 
</head>
<body>
<center><h2>EL TAG 연산자</h2></center>
<table align="center" border="1" height="50%" cellspacing="0" width="500">

<tr><th width="60%" align="center">Code</th><th align="center">결과</th></tr>
<tr height="9"><td width="60%"></td><td></td></tr>
<tr><td>\${5 + 2} </td><td> ${5 + 2}</td></tr>
<tr><td>\${5 / 2} </td><td> ${5 / 2}</td></tr>
<tr><td>\${5 mod 2} </td><td> ${5 mod 2}</td></tr>
<tr><td>\${5 > 2}</td><td>${5 > 2}</td></tr>
<tr><td>\${2 gt 10} </td><td> ${2 gt 10}</td></tr>
<tr><td>\${(5 > 2) ? 5 : 2} </td><td> ${( 5 > 2 ) ? 5 : 2}</td></tr>
<tr><td>\${(5 > 2) || ( 2 < 10)} </td><td> ${( 5 > 2 ) || ( 2 < 10)}</td></tr>
<%String input=null;%>
<tr><td>\${empty input}</td><td>${empty input}</td></tr>
</h2>
</table>
<br><br>
</body>
</html>