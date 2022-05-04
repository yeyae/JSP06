<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formatTag</title>
</head>
<body>
<%--
	fmt:
	데이터의 출력 형식 지정
	날짜, 숫자
	
	<fmt: ~~~>
	<fmt:formatNumber> : 숫자 포맷 지정
	<fmt:formatDate> : 날짜 포맷 지정
--%>
<c:set var="price" value="100000000"/>
<c:set var="today" value="<%=new Date() %>" />
<%-- 숫자 포맷 설정 --%>
숫자 : <fmt:formatNumber type="number" value="${price }"/><br>
퍼센트 : <fmt:formatNumber type="percent" value="${price }"/><br>
통화 : <fmt:formatNumber type="currency" value="${price }"/><br>
패턴 : <fmt:formatNumber pattern="00,000,000.00" value="${price }"/><br>
<%-- 날짜 포맷 설정 --%>
date : <fmt:formatDate value="${today }" type="date" /><br>
date full : <fmt:formatDate value="${today }" type="date" dateStyle="full"/><br>
date short : <fmt:formatDate value="${today }" type="date" dateStyle="short"/><br>
time : <fmt:formatDate value="${today }" type="time" /><br>
both : <fmt:formatDate value="${today }" type="both" /><br>
패턴 : <fmt:formatDate value="${today }" type="both" pattern="YYYY-MM-dd HH:mm:ss"/><br>

<%-- 문자열 처리 해주는 클래스 (문자열 조각 나누기) StringTokenizer 
	items : 자를 문자열
	delims : 구분자
	var : 태그 안에서 사용할 변수 이름 ( 문자열 조각 하나 )
--%>
콤마와 점을 구분자로 사용해서 문자열 나누기 <br>
<c:forTokens var="token" 
	items="빨강색,주황색.노란색,초록색.파랑색,남색@보라색" delims=",.@">
	${token }
</c:forTokens>
</body>
</html>