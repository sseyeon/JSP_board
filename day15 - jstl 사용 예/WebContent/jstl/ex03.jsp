<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core Tag(1)</title>
</head>
<body>

<h4>스크립틀릿에서 자바코드로 Attribute 추가</h4>
<%
	pageContext.setAttribute("msg", "Hello");//페이지 컨텍스트 객체에 어트리뷰트 추가하는 자바 코드
%>
<table border="1" width="650"><tr><td><p>
&nbsp;pageContext.setAttribute(<span class="string">"msg"</span>, <span class="string">"Hello"</span>);<br>
<span class="subsc">&nbsp; // 페이지 컨텍스트 객체에 어트리뷰트 추가하는 자바 코드</span><br><br>
<span class="r">&nbsp; pageContext</span>.getAttribute(<span class="string">"msg"</span>) : <%=pageContext.getAttribute("msg") %><br>
&nbsp; \${msg } : ${msg }</p>
</td></tr></table>


<h4>c:set으로 Attribute추가 (기본 대상 객체 : pageContext)</h4>

<c:set var="msg2" value="Hello~"/>	

<table border="1" width="650"><tr><td><p>
<span class="jstl">&nbsp;&lt;c:set <span class="purple">var</span>=<span class="string">"msg2"</span> <span class="purple">value</span>=<span class="string">"Hello~"</span>/></span><br><br>
<span class="r">&nbsp; pageContext</span>.getAttribute(<span class="string">"msg2"</span>) : <%=pageContext.getAttribute("msg2") %><br>
&nbsp; \${msg2 } : ${msg2 }</p>
</td></tr></table>
<br><hr color="red"><br><br>

<h4> request에 Attribute 추가 </h4>
<c:set var="member1" value="태연" scope="request"/>

<table border="1" width="650"><tr><td><p>
<span class="jstl">&nbsp;&lt;c:set <span class="purple">var</span>=<span class="string">"member1"</span> <span class="purple">value</span>=<span class="string">"태연"</span> <span class="purple">scope</span>=<span class="string">"request"</span>/></span><br><br>
<span class="r">&nbsp; request</span>.getAttribute("member1") : <%=request.getAttribute("member1") %><br>
&nbsp; \${member1 } : ${member1 }</p>
</td></tr></table>


<br><hr color="red"><br><br>
<h4> session에 Attribute 추가 </h4>
<c:set var="member2" value="아이유" scope="session"/>

<table border="1" width="650"><tr><td><p>
<span class="jstl">&nbsp;&lt;c:set <span class="purple">var</span>=<span class="string">"member2"</span> <span class="purple">value</span>=<span class="string">"아이유"</span> <span class="purple">scope</span>=<span class="string">"session"</span>/></span><br><br>
<span class="r">&nbsp; session</span>.getAttribute("member2") : <%=session.getAttribute("member2") %><br>
&nbsp; \${member2 } : ${member2 }</p>
</td></tr></table>
<br><hr color="red"><br><br>


<h4> application에 Attribute 추가 </h4>
<c:set var="member3" value="수지" scope="application"/>

<table border="1" width="650"><tr><td><p>
<span class="jstl">&nbsp;&lt;c:set <span class="purple">var</span>=<span class="string">"member3"</span> <span class="purple">value</span>=<span class="string">"수지"</span> <span class="purple">scope</span>=<span class="string">"application"</span>/></span><br><br>
<span class="r">&nbsp; application</span>.getAttribute("member3") : <%=application.getAttribute("member3") %><br>
&nbsp; \${member3 } : ${member3 }</p>
</td></tr></table>
<br><hr color="red"><br><br>

<h4> 시작 마침 태그 사이에 값을 넣어도 값이 할당 된다 </h4>
<c:set var="where" scope="application">
	1102
</c:set>

<table border="1" width="650"><tr><td><p>
<span class="jstl">&nbsp;&lt;c:set <span class="purple">var</span>=<span class="string">"where"</span> <span class="purple">scope</span>=<span class="string">"application"</span>></span>1102<span class="jstl">&lt;/c:set></span><br><br>
<span class="r">&nbsp; application</span>.getAttribute("where") : <%=application.getAttribute("where") %><br>
&nbsp; \${where } : ${where }<br>
&nbsp; \${where + 1 } : ${where + 1 }<br>
&nbsp;<span class="subsc"> // 정수형 계산이 가능하다</span></p>
</td></tr></table>



<h4> 세션에 자바 객체 생성하기 </h4>
<c:set var="member" value="<%=new mypack.Info()%>" scope="session"/>
<c:set target="${member }" property="name" value="김희철"/>


<table border="1" width="650"><tr><td><p>
<span class="r">((mypack.Info)session</span>.getAttribute("member")).getName() : <%=((mypack.Info)session.getAttribute("member")).getName() %><br>
&nbsp;\${member.name } : ${member.name }<br></p>
</td></tr></table>



<h4> 생성된 Attribute 삭제하기 </h4>
<c:remove var="msg" scope="page"/>
<c:remove var="msg2" scope="page"/>
<c:remove var="member1" scope="request"/>
<c:remove var="member2" scope="session"/>
<c:remove var="member3" scope="application"/>
<c:remove var="member"/>

<table border="1" width="650"><tr><td><p>

\${msg } : ${msg }<br>
&nbsp;\${msg2 } : ${msg2 }<br>
&nbsp;\${member1 } : ${member1 }<br>
&nbsp;\${member2 } : ${member2 }<br>
&nbsp;\${member3 } : ${member3 }<br>
&nbsp;\${member } : ${member }<br>
&nbsp;\${member.name } : ${member.name }<br>


</p>
</td></tr></table>


</body>
</html>