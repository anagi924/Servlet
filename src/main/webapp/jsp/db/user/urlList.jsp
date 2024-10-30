<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hwayoung.servlet.database.ex.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 목록</title>
</head>
<body>
	<%
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		
		List<Map<String, Object>> bookmarkList = mysqlService.select("select * from `bookmark`;");
		mysqlService.disconnect();
		
	%>
	<h3>사이트 목록</h3>
	 <table border="1">
	 	<thead>
	 		<tr>
	 			<th>사이트
	 			<th>사이트 주소
	 		</tr>
	 	</thead>
	 	<tbody>
	 	<% for(Map<String, Object> bookmark:bookmarkList) { %>
	 		<tr>
	 			<th><%= bookmark.get("name") %>
	 			<th><%= bookmark.get("url") %>
	 			
	 		</tr>
	 		<% } %>
	 		 
	 		
	 	</tbody>
	 </table>
</body>
</html>
