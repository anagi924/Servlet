<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hwayoung.servlet.database.ex.MysqlService" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
</head>
<body>
	<%
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		
		List<Map<String, Object>> userList = mysqlService.select("select * from `new_user` order by `id` limit 0,10;");
		mysqlService.disconnect();
		
	%>
	<h3>사용자 목록</h3>
	 <table border="1">
	 	<thead>
	 		<tr>
	 			<th>이름
	 			<th>이메일
	 			<th>자기소개
	 		</tr>
	 	</thead>
	 	<tbody>
	 	<% for(Map<String, Object> user:userList) { %>
	 		<tr>
	 			<th><%= user.get("name") %>
	 			<th><%= user.get("email") %>
	 			<th><%= user.get("introduce") %>
	 			
	 		</tr>
	 		<% } %>
	 		 
	 		
	 	</tbody>
	 </table>
</body>
</html>