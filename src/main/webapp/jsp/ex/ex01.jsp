<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
	
	<h2>2. 리스트 다루기</h2>
	<%
		// 동물 이름 리스트
		List<String> animalList = new ArrayList<>();
		animalList.add("cat");
		animalList.add("dog");
		
	
	%>
	
	
	
	<div>
		<%=sum %>
	</div>
	
	<ul>
		<li><%= animalList.get(0)%></li>
		<li><%= animalList.get(1)%></li>
		
		
	</ul>
	
	<h2>3. 메소드 만들기</h2>
	
	<%! 
		// Hello World 문자열을 리턴하는 메소드 작성
		public String getHelloWorld() {
			return "Hello World!!";
		}
	%>	
	
	<h3><%= getHelloWorld() %></h3>
	
	
</body>
</html>