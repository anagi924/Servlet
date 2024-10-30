<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
	
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
	<form method="get" action="/db/hongdangmu/create">
		<label>사이트명: </label><input class="form-control" type="text" name="site">
		<label>사이트 주소: </label><input class="form-control" type="text" name="url">
		<button class="btn btn-success" type="submit">추가</button>
	</form>
	
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
	
</body>
</html>
