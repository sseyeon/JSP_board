<%@page import="day16.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="del" class="day16.BoardVO"/>
<jsp:setProperty property="*" name="del"/>
<body>
삭제 페이지
<%
	request.setCharacterEncoding("UTF-8");
	String pw = request.getParameter("pw");
	String num = request.getParameter("num");
	
	BoardDAO dao = new BoardDAO();
	
	BoardVO vo = dao.getBoard(Integer.parseInt(num));
	String dbpw = vo.getPw();
	
	if(!dbpw.equals(pw)) {	// DB의 값과 사용자 입력값이 일치하는지 비교
		%>
			<script>
				alert("비밀번호가 일치하지 않습니다");
				history.go(-1);
			</script>
		<%
	}
	else {	// 비밀번호가 일치한다면
		int result = dao.deleteBoard(Integer.parseInt(num));	// 삭제 요청을 전달

		if (result == 1){	// 삭제 결과가 1이면
			%>
			<script>
				alert("글이 삭제되었습니다");
				location.href= "board.jsp";
			</script>
		<%
		}
		else {	// 삭제 결과가 0이면
			%><script>
				alert("글이 삭제되지 않았습니다");
				history.go(-1);
			</script>
		<%}
	 }
	 
%>
</body>
</html>