<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core Tag</title>

</head>
<body>
<h2>JSP Standard Tag Library</h2><br>
<ul>
<li><p>JSP는 스크립트릿과 자바코드 등 여러 코드들이 섞여서 복잡한 구조로 되어있는데, <br>간결하고 이해하기 쉽게 코딩을 하기 위해 자신만의 태그를 추가할수있다.</p></li>
<li><p><span class="bold">커스텀 태그</span> : JSP에서 기본적으로 제공되는 태그가 아닌 자신이 추가한 태그.<br>JSP를 작성할 때 자주 사용되는 자바코드를 웹에서 사용할 수 있는 태그 형태로 만드는 기술이다.</p></li>
<li><p><span class="bold">커스텀 태그 라이브러리</span> : 작성한 커스텀태그를 모아서 압축한 후 배포해서 사용하는것</p></li>
<li><p><span class="bold">라이브러리</span> : 여러 프로그램이 공통으로 사용하는 코드를 모아놓은 코드의 집합</p></li>
<li><p><span class="bold">JSTL</span> : 커스텀 태그들을 개별적으로 만들어 쓰다 보니 일관성이 없어서 이를 표준화 한 것.<br>
JSTL도 공통으로 사용되는 코드의 집합이다.</p></li>
</ul>
</body>
</html>