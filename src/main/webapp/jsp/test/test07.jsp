<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    
    String menu = request.getParameter("menu");
    String pointFilter = request.getParameter("pointFilter");

	%>
    <%= pointFilter %>
	<h3>검색 결과</h3>
	
	<table>
		<tr>
			<td>메뉴</td>
			<td>상호</td>
			<td>별점</td>
		</tr>	
	
 
     <% 
     	for(Map<String, Object> m :list) {
     		if(m.get("menu").equals(menu)) {
     %>
     	<tr>
     		<td><%= m.get("name") %></td>
     		<td><%= m.get("menu") %></td>
     		<td><%= m.get("point") %></td>
     	</tr>
     
     <%}
     		}%>
	</table>
</body>
</html>