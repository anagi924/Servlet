<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>메뉴검색</h2>
	
	<form method="get" action="/jsp/test/test07.jsp">
		<input type="text" name="menu">
		<label><input type="checkbox" name="pointFilter">4점 이하 제외</label>
		<button type="submit">검색</button>	
	</form>
</body>
</html>