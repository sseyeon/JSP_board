<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day12.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.getMember(userid);
	// 1. vo != null : 계정이 있다
	// 2. userpw.equals(vo.getUserpw()) : 입력받은 값과 계정의 비번이 일치
	
	if (vo != null && userpw.equals(vo.getUserpw())){
		session.setAttribute("login", vo);
		response.sendRedirect(request.getContextPath());%>
	<%}
	else{ %>
		<script>
		alert("로그인 실패! 메인화면으로 돌아갑니다");
		history.go(-1);
		</script>
	<%}%>
</body>
</html>