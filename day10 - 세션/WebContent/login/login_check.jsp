<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="member" class="day10.Member"/>
<jsp:setProperty property="*" name="member"/>
<%
	// useBean, setProperty 가 수행하는 내용
	day10.Member m  = new day10.Member();
	m.setUserid(request.getParameter("userid"));
	m.setUserpw(request.getParameter("userpw"));
%>
<%
	// DB에서 사용자가 전달한 ID를 이용하여 select 쿼리를 전송하고 결과를 ResultSet으로 받아서
	// 사용자가 입력한 userpw와 DB에 저장된 userpw를 비교하여 일치하면 로그인 성공
	
	// 로그인 성공하면 DB의 정보를 member객체에 모두 저장하고
	// member객체를 세션에 저장하기
	
	// header.jsp에서 session을 확인하여,
	// 만약 세션에 member정보가 있다면 그 userid를 출력하며 로그아웃 버튼을 출력하기
	// 만약 세션에 member정보가 없다면 userid 없이 로그인 버튼을 출력하기
	
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
 		conn = DriverManager.getConnection(url, user, password);	//연결 만들고
 		stmt = conn.createStatement();	//쿼리 만들어서
 		rs = stmt.executeQuery(sql);	// 넘김
 		
 		while (rs.next()){
 			dbid = rs.getString("userid");
 			dbpw = rs.getString("userpw");
 			dbname = rs.getString("username");
 			
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