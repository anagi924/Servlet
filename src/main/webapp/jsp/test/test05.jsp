<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<%
		String numberString = request.getParameter("number");
		String []units = request.getParameterValues("unit");
	
		int number = Integer.parseInt(numberString);
		
		double inch = 0;
		double yard = 0;
		double feet = 0;
		double meter = 0;
		
		String result = "";
		
		for(String s:units) {
			if(s.equals("inch")) {
				inch = number * 1.0 / 2.54;
				result += inch + " in<br>";
			} else if(s.equals("yard")) {
				yard = number * 1.0 / 91.44;
				result += yard + " y<br>";
			} else if(s.equals("feet")) {
				feet = number * 1.0 / 30.48;
				result += feet + " f<br>";
			} else if(s.equals("meter")) {
				meter = number * 1.0 / 100;
				result += meter + " m<br>";
			}
		}
		
	%>
	
	<h3>변환 결과</h3>
	<h4><%= number %>cm</h4>
	<hr>
	<h4><%= result %></h4>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
		
	
</body>
</html>