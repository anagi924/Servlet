<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hwayoung.servlet.database.ex.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
	<%
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String query = "select * from `favorite` order by `id` desc;";
		List<Map<String, Object>> favoriteList = mysqlService.select(query);
		mysqlService.disconnect();
		
	%>
	<h3>사이트 목록</h3>
	 <table border="1" class="table">
	 	<thead>
	 		<tr>
	 			<th>사이트
	 			<th>사이트 주소
	 		</tr>
	 	</thead>
	 	<tbody>
	 	<% for(Map<String, Object> favorite:favoriteList) { %>
	 		<tr>
	 			<td><%= favorite.get("name") %></td>
	 			<td><a href="<%= favorite.get("url") %>" target="_blank"><%= favorite.get("url") %></a></td>
	 			<td><a class="btn btn-danger" href="/db/favorite/delete?id=<%= favorite.get("id")%>">삭제</a></td>
	 		</tr>
	 		<% } %>
	 		 
	 		
	 	</tbody>
	 </table>
	 
	 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
</body>
</html>
