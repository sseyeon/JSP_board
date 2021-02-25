<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
<%--
	1. 사용자 입력 데이터는 request.getParameter()로 저장
	2. 사용자의 id를 이용해서 DB에 쿼리를 전송하고 정보를 따로 저장
	
		만약, 사용자가 입력한 id의 select 쿼리 결과가 없으면 로그인 실패
		혹은, 사용자가 입력한 id의 select 쿼리 결과에서
			비밀번호가 일치하지 않으면 [로그인 실패]
			비밀번호까지 일치하면 [로그인 성공]
 --%>
 <%@ page import="java.sql.*" %>
 <%
 	String userid = request.getParameter("userid");
 	String userpw = request.getParameter("userpw");
 	
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	// import oracle.jdbc.driver.OracleDriver
 	
 	Connection conn = null;
 	Statement stmt = null;
 	ResultSet rs = null;
 	
 	String url = "jdbc:oracle:thin:@localhost:1521:xe";
 	String user = "scott";
 	String password = "tiger";
 	String sql = "select * from member where userid='" + userid + "'";
 	String msg = null;
 	boolean login = false;
 	
 	String dbid, dbpw = null, dbname = null;	
 	try{
 		conn = DriverManager.getConnection(url, user, password);
 		stmt = conn.createStatement();
 		rs = stmt.executeQuery(sql);	// rs는 결과가 없어도 문자열 데이터의 집합체이므로, null이 아니다
 		
 		while (rs.next()){
 			dbid = rs.getString("userid");
 			dbpw = rs.getString("userpw");
 			dbname = rs.getString("username");
 			/*
 			beans.setUserid(rs.getString("userid"));
 			beans.setUserid(rs.getString("userpw"));
 			beans.setUserid(rs.getString("username"));
 			
 			return beans;	// 계정의 모든 정보를 담고 있는 beans 객체
 			// beans를 세션에 저장하면, 세션에서 회원정보를 바로 확인할 수 있다.
 			// 세션에 beans가 없으면, 로그인 되지 않은 상태로 판단한다
 			*/
 			
 		}
 		if (dbpw != null && userpw.equals(dbpw)){
 			// out.print(userid + ", 로그인 성공 !!");
 			msg = dbname + "님, 로그인을 환영합니다";
 			login = true;
 		}else{
 			// out.print("로그인 실패 !!");
 			msg = "로그인 실패";
 		}
 		
 	}catch (SQLException e){
 		System.out.println("SQL 예외 발생 !!");
 		System.out.println(e);
 	}catch (Exception e){
 		System.out.println("일반 예외 발생 !!");
 		System.out.println(e);
 		
 	}finally{
 		if (rs != null) {try{ rs.close();} catch(Exception e) {}}
 		if (stmt != null) {try{ stmt.close();} catch(Exception e) {}}
 		if (conn != null) {try{ conn.close();} catch(Exception e) {}}
 	}
 %> 

<% if (login) { %>
<script>
	alert("<%=msg%>");
	location.href = "main.jsp";
</script>
<% } else { %>
<script>
	alert("<%=msg%>");
	location.href = "login.jsp";
</script>
<%} %>











</body>
</html>