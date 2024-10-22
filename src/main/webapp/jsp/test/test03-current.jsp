<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Date" %>
   <%@ page import="java.text.SimpleDateFormat" %>
   <%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date today = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy년 MM월 dd일");
		LocalTime time = LocalTime.now();
		int hour = time.getHour();
		int minute = time.getMinute();
		int second = time.getSecond();
	
	%>
	
	<h3>오늘 날짜 <%=df.format(today) %></h3>
	
	<h2>현재 시간 <%= hour%>시 <%= minute%>분 <%= second%>초</h2>
</body>
</html>