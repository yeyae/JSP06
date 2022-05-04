<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 조건문 사용하기</title>
</head>
<body>
<%--
	<c:if test="조건식">
 --%>
<%-- <c:if test="${color == 'red'}">
<script>
	document.body.style.backgroundColor= "red";
</script>
	<span style="color:red;">빨강</span>
</c:if>
<c:if test="${color == 'blue'}">
	<span style="color:blue;">파랑</span>
</c:if>
<c:if test="${color == 'green'}">
	<span style="color:green;">초록</span>
</c:if> --%>
<c:choose>
	<c:when test="${color=='red'}">
	<script>
		document.body.style.backgroundColor = "red";
	</script>
	</c:when>
	<c:when test="${color=='blue'}">
	<script>
		document.body.style.backgroundColor = "blue";
	</script>
	</c:when>
	<c:otherwise>
	<script>
		document.body.style.backgroundColor = "green";
	</script>
	</c:otherwise>
</c:choose>
</body>
</html>