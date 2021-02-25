<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_result.jsp </title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String sc, msg, url, url2;
	sc = request.getParameter("sc");
	msg = request.getParameter("msg");
	url = request.getParameter("url");
	url2 = request.getParameter("url2");
	
	if (sc == null && msg == null && url == null && url2 == null){
		response.sendRedirect("ex02_form.jsp");
		// 클라이언트에게 ex02_form.jsp로 이동하라고 전달한다
	}
	
	if (sc != null && msg != null){
		int error = Integer.parseInt(sc);
		response.sendError(error, msg);
		// 클라이언트에게 에러코드와 내용을 전달한다.
	}
	
	if (url != null){
		response.sendRedirect(url);	// 지정한 주소로 클라이언트에게 이동 명령을 전달한다
	}
	
	if (url == null && url2 != null){
		response.sendRedirect(url2);	// 사용자가 직접 입력한 주소
	}
%>
</body>
</html>