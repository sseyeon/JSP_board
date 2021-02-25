<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_select.jsp</title>
</head>
<body>

<%--
	JSP에서 Oracle Database의 정보를 가져와서 출력하기
	
	1. ojdbc6_2.0.4.jar 파일을 프로젝트의 WEB-INF/lib/ 복사
	2. page import="java.sql.*"
--%>

<h1>Member Table</h1>

<table border="1" cellpadding="7" cellspacing="0" align="center">
<tr>
	<th>계정</th>
	<th>비밀번호</th>
	<th>사용자이름</th>
	<th>나이</th>
	<th>성별</th>
</tr>

<%
	String userid = null, userpw = null, username = null, age = null, gender = null;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");	// ojdbc6_2.0.4.jar
	Connection conn = null;	// DB와 연결을 저장할 객체
	Statement stmt = null;	// 상태를 저장할 객체
	ResultSet rs = null;	// 요청의 결과를 저장할 객체
	
	try{
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		// 드라이버 매니저를 이용하여 localhost의 xe 데이터베이스에 계정과 비번으로 접속하여 연결
		
		stmt = conn.createStatement();
		// 연결의 상태를 stmt에 저장
		
		rs = stmt.executeQuery("SELECT * FROM MEMBER");
		// 연결상태 객체에서 쿼리를 실행하여 그 결과를 rs에 저장
		
		// rs에서 각각의 데이터를 문자열에 저장하고 출력하는 코드
		
		while (rs.next()){
			userid = rs.getString("userid");
			userpw = rs.getString("userpw");
			username = rs.getString("username");
			age = rs.getString("age");
			gender = rs.getString("gender");
			// while 에 의해서 반복되면 다른 값이 덮어씌워지므로, while이 끝나기 전에 HTML에 출력해야 한다
			
			out.print("<tr>");
			out.print("<td>" + userid + "</td>");
			out.print("<td>" + userpw + "</td>");
			out.print("<td>" + username + "</td>");
			out.print("<td>" + age + "</td>");
			out.print("<td>" + gender + "</td>");
			out.print("</tr>\n");
			
		}
	}
	catch (SQLException e){
		System.out.println("DB 예외 발생 !");
		System.out.println(e);
	}
	catch (Exception e){
		System.out.println("기타 예외 발생 !");
		System.out.println(e);
	}
	
	finally {											// 예외 발생여부에 상관없이
		if (rs != null) {	
			try {rs.close();}catch(SQLException e){}	// 생성의 역순으로 rs를 close하고
		}
		if (stmt != null){
			try{stmt.close();}catch(SQLException e){}	// stmt를 close
		}
		if (conn != null){
			try{conn.close();}catch(SQLException e){}	// 최종으로 conn을 close하여 연결을 끊어준다
		}
	}
	
%>

</table>
</body>
</html>