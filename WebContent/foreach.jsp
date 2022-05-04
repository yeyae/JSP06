<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
	jstl 사용하려면
	1. WEB-INF/lib jstl-1.2.jar 파일 복사 붙여넣기
	2. 디렉티브에 태그 라이브러리 사용 선언 <%@ taglib %>
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 을 사용한 반복문</title>
</head>
<body>
<%
	String[] movieList = {"듄" , "데드풀", "어벤져스", "반지의제왕" , "해리포터"};
	request.setAttribute("mList", movieList);
%>
<c:forEach items="${mList }" var="movie" varStatus="status" step="1" >
	${movie } : index = ${status.index } 번째 원소<br>
				count = ${status.count } 반복 횟수<br>
				first = ${status.first } 첫번째 원소인가??<br>
				last  = ${status.last } 마지막 원소인가??<br>
				<hr>
</c:forEach>
<%-- forEach 태그 연습 
	배열, collection , Map 등에 있는 값들을 순차적으로 접근하여 처리
	속성 목록
	items : 우리가 접근하고자 하는 데이터들의 모음(배열, collection, map)
	var : 각 반복에서 요소가 저장될 변수의 이름 arr[i] => i번째 원소
			몇번째인지 상관없이 변수이름을 다 통일
	begin : 시작인덱스 설정
	end : 종료인덱스 설정
	step : 인덱스 증가분 (i++)
	
	varStatus : index, count 에 접근 가능
	index : 실행중인 index (몇번째 반복인지)
	count : 반복실행 횟수
	first : 반복이 첫번째이면 true, 아니면 false
	last : 반복이 마지막이면 true, 아니면 false
--%>
</body>
</html>