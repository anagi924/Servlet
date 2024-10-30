<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hwayoung.servlet.database.ex.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물품 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String query = "select * from `used_goods` order by `id` desc;";
		List<Map<String, Object>> goodsList = mysqlService.select(query);
		mysqlService.disconnect();
		
	%>
	<div id="wrap">
		
		<div class="title">
			<h3 class="text-align-center">HONG당무 마켓</h3>
		</div>
		<div class="main-menu">
			<nav class="d-flex align-items-center justify-content-center">
				<ul class="nav">
					<li class="nav-item"><a href="#" class="nav-link small-link">리스트</a>
					<li class="nav-item"><a href="#" class="nav-link small-link">물건 올리기</a>
					<li class="nav-item"><a href="#" class="nav-link small-link">마이 페이지</a>
				</ul>
			</nav>
		
		</div>
		<div class="main-contents">
		
			 <table border="1" class="table">
			 	<thead>
			 		<tr>
			 			<th>사이트
			 			<th>사이트 주소
			 			<th>가격
			 			<th>판매자 아이디
			 		</tr>
			 	</thead>
			 	<tbody>
			 	<% for(Map<String, Object> goods:goodsList) { %>
			 		<tr>
			 		
			 			<td><img width="100" height="50" src="<%= goods.get("profileImage") %>"></td>
			 			<td><%= goods.get("title") %></td>
			 			<td><%= goods.get("price") %>원</td>
			 			<td><%= goods.get("sellerId") %></td>
			 		</tr>
			 		<% } %>
			 		 
			 		
			 	</tbody>
			 </table>
		 
		</div>
	</div>
	 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
</body>
</html>
