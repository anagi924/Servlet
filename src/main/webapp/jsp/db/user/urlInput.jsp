<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>즐겨찾기 추가</h3>
	
	<form method="get" action="/db/user/create">
	
		<label>사이트명: </label><input type="text" name="name">
		<label>사이트 주소: </label><input type="text" name="url">
		<button type="submit">추가</button>
	</form>
</body>
</html>
