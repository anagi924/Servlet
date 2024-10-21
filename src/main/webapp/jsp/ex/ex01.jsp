<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 시작</title>
</head>
<body>
	<h3>1. 기본 문법</h3>
	<!-- html 주석 -->
	<%-- jsp 주석 서버에서 처리되어서 소스코드에서 사라짐 --%>
	
	<%-- 1부터 10까지의 합을 h3 태그로 구성 --%>
	<%
		// 꺽쇠퍼센트안에서는 자바 코드를 작성할 수 있음
		int sum = 0;
		for(int i = 1; i < 10; i++) {
			sum += i;
		}
	%>
	
	<h3>합계: <%=sum %></h3>
	
	<input type="text" value="<%=sum %>">
	
	<div>
		<%=sum %>
	</div>	
</body>
</html>