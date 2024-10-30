<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
	List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String category=request.getParameter("category");
	%>
	
	<div id="wrap">
		
		
		
		<header class="">
			<h2 class="text-danger">Sk broadband IPTV</h2>
		</header>
		
		<nav class="main-contents">
		
			<ul class="nav nav-fill bg-danger">
				<li class="nav-item"><a class="small-link" href="/jsp/test/test09.jsp?test09.jsp">전체</a></li>
				<li class="nav-item"><a class="small-link" href="/jsp/test/test09.jsp?category="지상파">지상파</a></li>
				<li class="nav-item"><a class="small-link" href="/jsp/test/test09.jsp?category="드라마">드라마</a></li>
				<li class="nav-item"><a class="small-link" href="/jsp/test/test09.jsp?category="예능">예능</a></li>
				<li class="nav-item"><a class="small-link" href="/jsp/test/test09.jsp?category="영화">영화</a></li>
				<li class="nav-item"><a class="small-link" href="/jsp/test/test09.jsp?category="스포츠">스포츠</a></li>
				
			</ul>
		</nav>
		
		<section class="main-contents">
		
			<table class="table">
				<thead>
					<tr>
						<td>채널</td>
						<td>채널명</td>
						<td>카테고리</td>
					</tr>
				</thead>
				<tbody>
				<%for(Map<String, String> channel : list) { 
					if(category == null || category.equals(channel.get("category"))) { %>
					<tr>
						<td><%=channel.get("ch") %></td>
						<td><%=channel.get("name") %></td>
						<td><%=channel.get("category") %></td>
						
						<%} %>
						<%} %>
					</tr>
				</tbody>
			</table>
		</section>	
		
		
		<footer class="text-center small mt-3">Mardonal 2024. marondal All Rights Reserved.</footer>
		
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
	
</body>
</html>		