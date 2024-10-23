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
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		String operator = request.getParameter("operator");
		
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		double result = 0;
		String op = "";
		
		
		if(operator.equals("addiction")) {
			result = number1 + number2;
			op = "+";
		} else if(operator.equals("substraction")) {
			result = number1 - number2;		
			op = "-";
		} else if(operator.equals("multiply")) {
			result = number1 * number2;		
			op = "*";
		} else if(operator.equals("division")) {
			result = number1 / number2;		
			op = "/";
		}
	%>
	
	<h2>계산 결과</h2>
	<h1><%= number1 %><%= op%><%= number2 %>=<span class="text-info"><%= result %></span></h1>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
</body>
</html>