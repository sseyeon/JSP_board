<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateMember.jsp</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="info" class="day15.MemberVO" />	
<jsp:setProperty property="*" name="info"/>

<%
	MemberDAO dao = new MemberDAO();
	int result = dao.UpdateMember(info);
	if (result == 1){
			session.invalidate(); %>
			<script>
				alert("정보가 성공적으로 변경되었습니다\n다시 로그인 해 주시기 바랍니다");
				location.href = "<%=request.getContextPath()%>";
			</script>
			<%
		}
	else { %>
		<script>
			alert("변경 실패");
			history.go(-1);
		</script>
	<%}
%>
</body>
</html>