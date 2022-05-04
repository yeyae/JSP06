<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>색깔 선택</title>
</head>
<body>
	<form action="colorSelect">
		<select name="color">
			<option value="1">빨강</option>
			<option value="2">파랑</option>
			<option value="3">초록</option>
		</select>
		<input type="submit" value="확인">
	</form>
	<!-- 서블릿 작성 ColorServlet 
		요청을 받는다. (요청 안의 파라미터는 색의 종류)
		받아온 파라미터 값에 따라 request에 속성을 추가
		받아온 파라미터 값이 1 ==> red
						값이 2 ==> blue
						값이 3 ==> green
		ex) attribute에 "color" , "red" 이런식으로 추가
		속성을 추가하고 colorSelect.jsp 로 화면전환
	 -->
</body>
</html>