<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_reverse.jsp</title>
</head>
<body>
<%! // Declaration, 선언부 : 메서드 선언
	
	public int Reverse(int num){
		int ret = 0;
		while (true){
			ret += num % 10;
			ret *= 10;
			num /= 10;
			if (num < 10){
				ret += num;
				return ret;
			}
		}
	}
%>

<%  // Scriptlet, 스크립틀릿 : 코드 진행 (지역 변수 선언 및 메서드 호출)
	int num = 1234;
	int ret = 0;
	
	ret = Reverse(num);	// 메소드 호출
	
//	out.print("<h2>" + num + "</h2>");
%>

<h2><%=num %>을 거꾸로 하면 <%=ret %>입니다</h2>




</body>
</html>