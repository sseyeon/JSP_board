<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_result.jsp </title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String [] color = request.getParameterValues("color");
	// 1. 배열의 길이만큼 반복해서 내부의 값을 출력하는 코드
	for (int i = 0; i < color.length; i++){
		out.print(color[i] + "<br>");
	}
	
	// 2. 글자의 색상을 지정된 색상으로 출력하는 코드
	
	for (int i = 0; i < color.length; i++){
		String tag = "<font color=\"%s\"><b>%s</b></font>";
		switch(color[i]){
		case "빨강" : tag = String.format(tag, "red", color[i]); break;
		case "노랑" : tag = String.format(tag, "yellow", color[i]); break;
		case "파랑" : tag = String.format(tag, "blue", color[i]); break;
		case "초록" : tag = String.format(tag, "green", color[i]); break;
		case "보라" : tag = String.format(tag, "purple", color[i]); break;
		}
		out.print(tag);
		if (i != color.length - 1) out.print(", ");
		else out.print("입니다.<br>");
	}
%>
</body>
</html>