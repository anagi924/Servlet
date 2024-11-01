<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Date" %>
   <%@ page import="java.text.SimpleDateFormat" %>
   <%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
	<%
		Date today = new Date();
		SimpleDateFormat df = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
		SimpleDateFormat tf = new SimpleDateFormat("오늘 시간 H시 m분 s초");	
		

		// 어떤 정보를 보여줄지 파라미터를 통해 전달 바든다
		// 시간을 보여줄지, 날짜를 보여줄지
		// what : time - 시간, date - 날짜
		
		String what = request.getParameter("what");
		
		String result = null;
		if(what.equals("time")) {
			result = tf.toString();
		} else if(what.equals("date")) {
			result = df.toString();
		}
	%>
	
	<h3>오늘 날짜 <%= result %></h3>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
</body>
</html>