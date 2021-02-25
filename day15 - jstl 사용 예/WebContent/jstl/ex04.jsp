<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core Tag(2)</title>
</head>
<body>

<c:if test="${empty param.age}" >	<%-- if(request.getParameter("age") == null) --%>
    <form action="ex04.jsp" method="post">
    	나이를 입력하세요 : <input type="text" name="age"><br><br>
    	<center><input type="submit"></center>
    </form>
</c:if>

<c:if test="${param.age < 20}" var="result" scope="session">
        <center>
        <h2>당신은 미성년자입니다</h2>
    	<a href="index.jsp"><button>돌아가기</button></a>
    	</center>
</c:if>

<c:if test="${param.age >= 20}" var="result" scope="session">
        <center>
        <h2>당신은 성인입니다</h2>
    	<a href="index.jsp"><button>돌아가기</button></a>
    	</center>
</c:if>
<%--
	<c:if test="${EL TAG 조건식}" scope="범위(생략가능)">
		내용
	</c:if>
--%>

</body>
</html>