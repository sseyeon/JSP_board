<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_cookie_form.jsp</title>
</head>
<body>
<p style="font-size:12pt;font-family:나눔고딕;">
Cookie는 웹에서 사용되는 작은 데이터 (4KB 이하)들을<br>
클라이언트의 디스크에 파일 형태로 저장하여 두었다가,<br>
특정 사이트(서버)에 방문할 때, 클라이언트가 같이 참조하여 가져가는 데이터<br>
<br>
예) ID 저장, 쇼핑몰 사이트 찜해두기, 즐겨찾기

</p>
<%
	Cookie [] cs = request.getCookies();	// 쿠키의 배열
	String text = null;
	
	if (cs != null){
		for (Cookie c : cs){	// 모든 쿠키중에서
			if (c.getName().equals("text"))	{// 이름이 text인 쿠키를 찾으면
				text = c.getValue();				// 그 값을 문자열 변수 text에 저장
				text = text.replace("_", " ");
				// 쿠키는 기본적으로 띄어쓰기를 허용하지 않으므로, 띄어쓰기를 처리하기 위한 
				// 글자 변경을 해주어야 한다
			}		
		}
	}
	/*
		for(단일자료형 변수 : 단일자료형 묶음)		배열, 컬렉션
	*/
	
%>

<hr>
<form action="ex01_cookie_result.jsp">
	문자열 입력 : <input name="text" value="<%= text != null ? text : "" %>">
	<input type="submit">
</form>

<hr>
<a href="javascript:alert(document.cookie);">	<!-- alert 팝업창 -->
<button>쿠키 확인하기</button></a>

<a href="ex01_delete_cookie.jsp">
<button>쿠키 삭제하기</button></a>

</body>
</html>