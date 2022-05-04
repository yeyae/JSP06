<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어</title>
</head>
<body>
	<h1>표현 언어 소개</h1>
	<p>표현 언어는 JSP에 값을 쉽게 표현하기 위한 언어입니다.</p>
	"HELLO"<br>
	<%="\"HELLO\"" %> <br>
	${"\"HELLO\"" }<br>
	
	<h2>EL 연산자</h2>
	<%--
		+,-,*,/ 산술 연산자
		/(div), %(mod)
		==(eq), !=(ne) , <(lt) , >(gt), <=(le) , >=(ge)
		&&(and) , ||(or), !(not)
		empty : 변수가 null 인지 검사하는 연산자
		3항연산자
		조건식 ? 값 1 : 값 2 ;
	 --%>
	
	정수형: ${10 }<br>
	실수형: ${10.1 }<br>
	문자열: ${"홍길동" }<br>
	논리형: ${false }<br>
	
	<h3>산술 연산</h3>
	<%-- 앞에 백슬래쉬를 쓰면 표현언어가 아니라 그대로 출력 --%>
	\${5+2 } : ${5+2 }<br>
	\${5/2 } : ${5/2 }<br>
	\${5 div 2} : ${5 div 2 }<br>
	\${5 mod 2} : ${5 mod 2 }<br>
	<h3>비교 연산</h3>
	\${5 > 2} : ${5 > 2}<br>
	\${5 gt 2} : ${5 gt 2}<br>
	\${5 <= 2} : ${5 <= 2 }<br>
	\${5 le 2} : ${5 le 2 }<br>
	<h3>논리 연산</h3>
	\${(5 > 2) && (2>10) } : ${(5>2) && (2>10) }<br>
	\${(5 > 2) || (2>10) } : ${(5>2) || (2>10) }<br>
	\${(5 > 2) and (2>10) } : ${(5>2) and (2>10) }<br>
	\${not(2>10) } : ${not(2>10) }<br>
	
	<h2>JSP 기본 객체</h2>
	<p>
	pageContext<br>
	request<br>
	session<br>
	application<br>
	</p>
	
	<h2>EL 기본 객체</h2>
	<p>
	pageContext : pageScope<br>
	request : requestScope<br>
	session : sessionScopre<br>
	application : applicationScope<br>
	param : request의 파라미터 정보를 포함하는 객체
	</p>
<% 
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");

%>
	<h3>el 로 기본객체 속성 꺼내오기</h3>
	page name : ${pageScope.name }<br>
	request name : ${requestScope.name }<br>
	session name : ${sessionScope.name }<br>
	application name : ${applicationScope.name }<br>
	
	<h3>el 로 요청 파라미터 꺼내오기</h3>
	<% String name = request.getParameter("name");%><br>
	<%= name %><br>
	
	${param.name }<br> <%-- 파라미터가 없어서 아무것도 뜨지 않음 --%>
	
<% 
	Map<String, String> testMap = new HashMap<String , String>();
	testMap.put("k1", "v1");
	testMap.put("k2", "v1");
	testMap.put("k3", "v1");
	testMap.put("k4", "v1");
	request.setAttribute("myMap", testMap);

%>	
	<h3>el 로 Map 에서 데이터 꺼내오기</h3>
	${myMap["k1"]}<br>
	
</body>
</html>