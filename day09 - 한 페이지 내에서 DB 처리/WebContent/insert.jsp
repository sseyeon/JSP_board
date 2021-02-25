<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리 페이지</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="join" class="day09.Member"/>
<jsp:setProperty property="*" name="join"/>
<%-- 모든 파라미터를 이름에 맞게 가져와서, 가져온 값을 beans의 모든 setter를 통해서 객체에 저장한다 --%>
<%
	/* java.util.Enumeration <String> enu = request.getParameterNames();
	while (enu.hasMoreElements()){
		out.print(enu.nextElement() + "<br>");
	} */
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
 	// import oracle.jdbc.driver.OracleDriver
 	
 	Connection conn = null;
 	Statement stmt = null;
 	//ResultSet rs = null;
 	int result = 0;
 	
 	String url = "jdbc:oracle:thin:@localhost:1521:xe";
 	String user = "scott";
 	String password = "tiger";
 	String sql = "insert into member values (";
 	sql += "'" + join.getUserid() + "',";
 	sql += "'" + join.getUserpw() + "',";
 	sql += "'" + join.getUsername() + "',";
 	sql += "'" + join.getAge() + "',";
 	sql += "'" + join.getGender();
 	sql += "')";
 	
 	String dbid, dbpw = null, dbname = null;	
 	try{
 		conn = DriverManager.getConnection(url, user, password);
 		stmt = conn.createStatement();
 		//rs = stmt.executeQuery(sql);		// ResultSet 형태를 반환하는 executeQuery()
		result = stmt.executeUpdate(sql);	// int를 반환하는 executeUpdate()
 		
 	}catch (SQLException e){
 		System.out.println("SQL 예외 발생 !!");
 		System.out.println(e);
 	}catch (Exception e){
 		System.out.println("일반 예외 발생 !!");
 		System.out.println(e);
 		
 	}finally{
 		// if (rs != null) {try{ rs.close();} catch(Exception e) {}}
 		if (stmt != null) {try{ stmt.close();} catch(Exception e) {}}
 		if (conn != null) {try{ conn.close();} catch(Exception e) {}}
 	}
 	if (result != 0){
 		%>
 		<script>
 			alert("<%=sql%>");
 			alert("회원 가입이 정상적으로 완료되었습니다.");
 			location.href = "login.jsp";
 		</script>
 		<%
 	}
 	else {
 		%>
 		<script>
 			// userid의 값이 Primary Key로 설정되어 있으면 중복된 ID는 가입할 수 없다
 			// pw의 값을 두개 받아서, 두 비밀번호가 서로 다르면 실패로 처리할 수 있다
 			alert("문제가 발생했습니다. 다시 시도해 주세요");
 			alert("<%=sql%>");
 			history.go(-1);		// 이전 페이지로 이동하면, 폼에 입력했던 데이터가 유지된다(비밀번호 제외)
 		</script>
 		<%
 	}
%>


</body>
</html>