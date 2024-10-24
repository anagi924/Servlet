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
		
		
		// 인치, 야드, 피트, 미터
		// inch, yard, feet, meter
		
		// 결과를 저장할 문자열
		String result = "";
		
		for(String s:units) {
			if(s.equals("inch")) {
				double inch = number / 2.54;
				//double inch = number * 0.39;
				result += inch + " in<br>";
			} else if(s.equals("yard")) {
				double yard = number / 91.44;
				//double yard = number * 0.010936133;
				result += yard + " y<br>";
			} else if(s.equals("feet")) {
				double feet = number / 30.48;
				//double feet = number * 0.32808399;
				result += feet + " ft<br>";
			} else if(s.equals("meter")) {
				double meter = number / 100.0;
				//double meter = number / 100.0;
				result += meter + " m<br>";
			}
		}
		
	%>
	
	<h3>변환 결과</h3>
	<h4><%= number %>cm</h4>
	<hr>
	<h4><b><%= result %></h4></b>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
		
	
</body>
</html>