<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex03_check.jsp </title>
</head>
<body>
<%!
	String [] ids = {"root", "itbank", "test", "iu930516"};
	String [] pws = { "1", "it", "test", "iu"};
	String [] names = {"관리자", "아이티뱅크", "테스트", "이지은"};
	
	public boolean Login(String id, String pw){
		for (int i = 0; i < ids.length; i++){	
			if (ids[i].equals(id)){		// 매개변수가 null일수도 있으므로, 매개변수를 뒤에 넣어서 비교
				if(pws[i].equals(pw))
					return true;
				else 
					return false;
			}
		}
		return false;		
	}
%>

<%

	request.setCharacterEncoding("UTF-8");		//파라미터를 UTF-8로 식별하기

	String userid, userpw;
	userid = request.getParameter("userid");	// 사용자 입력값 ID를 문자열에 저장
	userpw = request.getParameter("userpw");	// 비밀번호를 문자열에 저장
	
	boolean login = Login(userid, userpw);		// 전달받은 두 문자열로 로그인 여부를 체크
	
	if (login)
		response.sendRedirect("ex03_main.jsp");
	else
		response.sendRedirect("ex03_login.jsp");
%>

</body>
</html>