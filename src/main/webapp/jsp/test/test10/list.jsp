<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
	
	<%
	// 아티스트 정보 
	
	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");
	
	
	// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();
	
	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	%>
	
	<!-- 
	멜롱 사이트
	아래와 같이 아이유 노래 목록을 보여주는 페이지를 만드세요.
	아래 주어진 데이터를 활용해서 화면에 표시하세요.
	리스트에서 노래제목을 클릭하면 해당 노래 세부사항을 표시하는 화면으로 이동하세요.
	검색어를 입력하면 해당하는 노래 제목이 있을 경우 해당하는 노래 세부사항 페이지로 이동하세요. 
	-->
	
	<div id="wrap">
		<header class="d-flex">
			<div class="logo d-flex align-items-center">
				<h1 class="text-success">Melong</h1>
			</div>
			<div class="search d-flex align-items-center">
				<form class="input-group col-6" method="get" action="/jsp/test/test10/detail.jsp">
					<input type="text" name="title" class="form-control">
					<div class="input-group-append">
					<button class="btn btn-success" type="submit">검색</button>
					</div>	
				</form>
			</div>
		</header>
		
			<nav class="main-menu">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link text-dark" href="#">멜롱차트</a></li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">최신음악</a></li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">장르음악</a></li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">멜롱DJ</a></li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">뮤직어워드</a></li>
				</ul>
			</nav>
			<section class="main-contents">
				<div class="singer d-flex border border-success p-3">
					<div>
						<img width="100px" alt="아이유" src="<%=  artistInfo.get("photo")%>" >
					</div>
					<div class="ml-3 ">
						<h4><%=  artistInfo.get("name")%></h4>
						<h6><%=  artistInfo.get("agency")%><br><%=  artistInfo.get("debute")%>년 데뷔</h6>
					</div>
				</div>	
				
				<div class="song-list md-4">
					<h3>곡 목록</h3>
					<table class="table table-sm text-center">
						<thead>
							<tr>
								<th>no
								<th>제목
								<th>앨범
							</tr>
						</thead>
						<tbody>
						<% for(Map<String, Object> music:musicList) { %> 
							<tr>
								<td><%= music.get("id")%></td>
								<td><a href="/jsp/test/test10/detail.jsp?id=<%= music.get("id")%>"><%= music.get("title")%></a></td>
								<td><%= music.get("album")%></td>
							</tr>
							<% } %>
						</tbody>
					</table>
				</div>
			</section>
			<footer class="">
				<div class="text-secondary">
				Copyright 2024. Melong All rights Reserved.
				</div>
			</footer>
			
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
</body>
</html>