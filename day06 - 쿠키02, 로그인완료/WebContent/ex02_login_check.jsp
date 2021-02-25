<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_login_check.jsp</title>
</head>
<body>
<%!

	String [] ids = {"root", "test", "qqq"};
	String [] pws = {"1", "2", "3"};
	String [] names = {"이름1", "이름2", "이름3"};

	public boolean login(String id, String pw){
		for (int i = 0; i < ids.length; i++){	
			if (ids[i].equals(id)){
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
	request.setCharacterEncoding("UTF-8");
	
	Cookie [] cs = request.getCookies(); 
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String storeid = request.getParameter("userid");
	Cookie mycookie = new Cookie("storeid", storeid);
	
	boolean login = login(userid, userpw);
	
	if (login){
		if (storeid != null){
			response.addCookie(mycookie);
			mycookie.setMaxAge(86400);			
		} else{
			mycookie.setMaxAge(0);
			response.addCookie(mycookie);
		}
		response.sendRedirect("ex02_login_complete.jsp");
	} else {
		mycookie.setMaxAge(0);
		response.addCookie(mycookie);
		response.sendRedirect("ex02_login_form.jsp");
	}


%>
</body>
</html>