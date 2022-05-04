<%@page import="java.util.HashMap"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSP 에서 jstl 을 사용하기 위해 추가해야되는 라이브러리 표시 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- prefix : 줄임말태그 , jstl을 사용할때 c 태그를 이용 --%>
<c:set var="msg">HELLO</c:set>
<c:set var="member" value="<%=new Member() %>" />
<c:set var="map" value="<%=new HashMap<String,Object>() %>" scope="request"></c:set>
<%-- jstl에서 사용할 변수 선언 및 속성 지정, el에서도 사용 가능 
	변수 이름 : msg , 변수 값 : HELLO var="변수이름"
--%>
<c:set target="${member }" property="name" value="홍길순"></c:set>
<%-- member 변수에 값 넣기 
	property ==> 값을 설정할 속성 이름
	value ==> 설정할 값
	target ==> 설정할 변수 이름
--%>
<c:set target="${map }" property="name" value="홍길동"></c:set>
<%--
	map 에 값 넣기
	property ==> key
	value ==> value
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		JSTL 사용하기
	 --%>
	 msg : ${msg }<br>
	 map : ${map }<br>
	 map[name] : ${map["name"]}<br>
	 member.name : ${member.name }<br>
	 map.name : ${map.name }<br>
	 <%-- 변수 제거 var="지울변수이름" --%>
	 <c:remove var="member"/> 
	 삭제 후 : member.name : ${member.name }
</body>
</html>