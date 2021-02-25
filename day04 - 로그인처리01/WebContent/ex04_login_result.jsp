<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex04_login_result.jsp </title>
</head>
<body>
<%!	// 선언부, Declaration
	String [] ids = {"root", "itbank", "test", "iu930516"};
	String [] pws = { "1", "it", "test", "iu"};
	String [] names = {"관리자", "아이티뱅크", "테스트", "이지은"};
%>

<%
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	
	boolean flag = userid != null && userpw != null;
	boolean noid = true;
	String msg = "";
	int index = -1;
	
	if (flag) {
		for (int i = 0; i < ids.length; i++){	// id 목록 중에서
			if (userid.equals(ids[i])){			// id가 일치하면
				noid = false;	// 계정이 존재함
				if (userpw.equals(pws[i])){		// pw도 일치하면
					msg = names[i] + "님, 환영합니다 !!";
					index = i;	// 0, 1, 2, 3 ...
					break;
				}
				else {	// 계정은 일치하지만 비밀번호가 일치하지 않으면
					msg = "비밀번호 오류입니다 !!";
					index = -1;		// 비밀번호 오류를 의미하는 -1
					break;
				}
			}
		}	// end of for
		if (noid) {	// 일치하는 계정을 찾지 못했다면
			msg = "계정을 찾을 수 없습니다 !!";
			index = -2;
		}
	}
	
%>

	<font size="7" color="<%=(index < 0) ? "red" : "blue"%>">
	<%=msg %>
	</font>

</body>
</html>