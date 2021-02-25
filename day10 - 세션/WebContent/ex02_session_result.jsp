<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_session_result.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String req_text = request.getParameter("text");	// 요청에서 parameter를 꺼내서
	session.setAttribute("text", req_text);	// 세션에 저장
%>
세션에 저장된 문자열 : <%=session.getAttribute("text") %><br>
세션이 생성된 시간 : <%=session.getCreationTime() %><br>
세션에 마지막으로 접근한 시간 : <%=session.getLastAccessedTime() %><br>
세션이 새로 생성된 세션인지 : <%=session.isNew() %><br>
세션의 고유번호 : <%=session.getId() %><br>
쿠키에 저장된 세션 번호 : <%=request.getCookies()[0].getValue() %><br>
<a href="ex02_session.jsp">
<button>입력 페이지에서 확인하기</button></a>

<a href="ex02_session_invalidate.jsp">
<button>세션 무효화 시키기</button></a>
</body>
</html>