<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete_member.jsp</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	MemberDAO dao = new MemberDAO();

	if (login.getUserpw().equals(request.getParameter("userpw"))){
		int result = dao.deleteMember(login.getUserid());
		
		if (result == 1){
			session.invalidate();
			%><script>
				alert("회원 탈퇴가 정상적으로 처리되었습니다.\n이용해주셔서 감사합니다");
				location.href= "<%=request.getContextPath()%>";
			</script>
		<%}
		else {
			%><script>
				alert("서버 내부 오류 발생");
				history.go(-1);
			</script>
		<%}
	}
	else {
		%><script>
			alert("비밀번호가 일치하지 않습니다");
			history.go(-1);
		</script>
	<%}
%>

</body>
</html>