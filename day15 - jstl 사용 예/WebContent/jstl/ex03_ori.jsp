<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TEST</title>
</head>
<body>
<center><a href="goto_3.jsp"><button>스타일 적용</button></a></center>

<h4>스크립틀릿에서 자바코드로 Attribute 추가</h4>
<%
	pageContext.setAttribute("msg", "Hello");//페이지 컨텍스트 객체에 어트리뷰트 추가하는 자바 코드
%>

pageContext.getAttribute("msg") : <%=pageContext.getAttribute("msg") %><br>
\${msg } : ${msg }



<h4>c:set 으로 pageContext에 변수 생성 및 값 할당</h4>
<c:set var="msg2" value="Hello~"/>	<!-- scope를 생략하면 기본이 page다 -->
pageContext.getAttribute("msg2") : <%=pageContext.getAttribute("msg2") %><br>
\${msg2 } : ${msg2 }






<h4> request에 Attribute 추가 </h4>
<c:set var="member1" value="태연" scope="request"/>
<%-- <% request.setAttribute("msg2", "태연"); %> --%>
request.getAttribute("member1") : <%=request.getAttribute("member1") %><br>
\${member1 } : ${member1 }




<h4> session에 Attribute 추가 </h4>
<c:set var="member2" value="아이유" scope="session"/>
<%-- <% session.setAttribute("member2", "아이유"); %> --%>
session.getAttribute("member2") : <%=session.getAttribute("member2") %><br>
\${member2 } : ${member2 }




<h4> application에 Attribute 추가 </h4>
<c:set var="member3" value="수지" scope="application"/>
<%-- <% application.setAttribute("member3", "수지"); %> --%>
application.getAttribute("member3") : <%=application.getAttribute("member3") %><br>
\${member3 } : ${member3 }




<h4> 시작 마침 태그 사이에 값을 넣어도 값이 할당 된다 </h4>
<c:set var="where" scope="application">
	602
</c:set>

application.getAttribute("where") : <%=application.getAttribute("where") %><br>
<%-- application.getAttrubute("where") + 1 : <%=application.getAttribute("where") + 1 %> --%>
<%-- Java에서는 Object와 int의 덧셈이 불가능하다 (자료형 불일치) --%>
\${where } : ${where }<br>
\${where + 1 } : ${where + 1 }
<!-- --------------------------------------------------------------------- -->



<h4> 세션에 자바 객체 생성하기 </h4>
<c:set var="member" value="<%=new mypack.Info()%>" scope="session"/>
<c:set target="${member }" property="name" value="김희철"/>


((mypack.Info)session.getAttribute("member")).getName() : <%=((mypack.Info)session.getAttribute("member")).getName() %><br>
\${member.name } : ${member.name }<br>



<h4> 생성된 Attribute 삭제하기 </h4>
<c:remove var="msg" scope="page"/>
<c:remove var="msg2" scope="page"/>
<c:remove var="member1" scope="request"/>
<c:remove var="member2" scope="session"/>
<c:remove var="member3" scope="application"/>
<c:remove var="member"/>
<%-- <c:remove target="${member }" property="name"/>  --%>
<%-- c:remove는 attribute를 삭제한다. 객체의 property는 대상이 아님 --%>
<%-- c:remove에서 scope를 생략하면 모든 영역의 attribute를 삭제한다 --%>


&nbsp;\${msg } : ${msg }<br>
&nbsp;\${msg2 } : ${msg2 }<br>
&nbsp;\${member1 } : ${member1 }<br>
&nbsp;\${member2 } : ${member2 }<br>
&nbsp;\${member3 } : ${member3 }<br>
&nbsp;\${member } : ${member }<br>
&nbsp;\${member.name } : ${member.name }<br>


</body>
</html>