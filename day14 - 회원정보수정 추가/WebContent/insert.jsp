<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day12.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 여기는 입력폼 -->
<%@include file="header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="newMember" class="day12.MemberVO" />	<!-- 객체생성 day09에 같은거 있음 -->
<jsp:setProperty property="*" name="newMember"/>

<%--
	day09.Member join2 = new day09.Member();
	Enumeration <String> name = request.getParameterNames();
	while(name.hasMoreElements()){
		String key = name.nextElement();
		String value = request.getParameter(key);
		switch(value){
		case "userid":
			join2.setUserid(value);
			
		}
	}
--%>


<%--
	넘어온 모든 파라미터에 대해서 이름이 같은 beans 객체의 setter가 있으면
	파라미터의 값을 beans의 setter에 대입하여 객체의 필드를 채운다
	
	ex) newMember.setUserid(request.getParameter("userid"));
 --%>

<%
	MemberDAO dao = new MemberDAO();
	MemberVO dup = dao.getMember(newMember.getUserid());	// 중복검사
	
	if (dup != null){
		%><script>
		alert("이미 사용중인 계정입니다");
		history.go(-1);
		</script><%
	}
	else{
		int result = dao.InsertMember(newMember);
		if (result == 1){
			%><script>
			alert("회원가입이 정상적으로 처리되었습니다.");
			location.href= "login.jsp";
			</script><%
		}else{
			%><script>
			alert("내부 오류 발생");
			history.go(-1);
			</script><%
		}
	}
%>
</body>
</html>