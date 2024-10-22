<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	BMI 수치
	키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능을 만드세요.
	키와 몸무게를 input으로 입력 받고 전달하는 form을 만들고 Get method 로 submit 하세요.
	입력 화면
	
	
	전달된 키와 몸무게 정보로 BMI 수치를 계산하여 출력하고 비만도 여부를 출력하세요.
	BMI 수치 계산공식
	
	BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0)); -->
	
	
	<h2>BMI 수치</h2>
	
	<%
	
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		double BMI = 1.0 * weight / ((height / 100.0) * (height / 100.0));
	
		String result = "";
		if(BMI >= 30) {
			result = "비만";
		} else if(BMI >= 25) {
			result  ="과체중";
		} else if(BMI >= 18.5) {
			result="정상";
		} else {
			result="저체중";
		}
		
	%>
	
	<h2>BMI 측정 결과</h2>
	<h1>당신은 <span style="color:blue;"><%=result %></span>입니다.</h1>
	<h6>BMI 수치 : <%=BMI %> </h6>	
</body>
</html>