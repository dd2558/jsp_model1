<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color: grey;
	}
	#wrap{
		width: 400px;
		height: 150px;
		margin: 150px auto 0;
		border: 2px solid white;
	}
	h1{
		text-align: center;
		color:white;	
	}
	.container{
		width: 400px;
		height: 100px;
		display: flex;
		justify-content: space-between;
	}
	.container>p{
		width: 70px;
		height: 10px;
		margin: 0 auto;
		text-align: center;
	}
	p>a{
		text-decoration: none;
		color:white;
	}
</style>
</head>
<body>
	<div id="wrap">
		<h1>맛집리스트</h1>
		
		<div class="container">
		<p class="login"><a href="./board/login.jsp">로그인</a></p>
		
		<p class="list"><a href="./board/list.jsp">글목록</a> <br /></p>
		<p class="newContent"><a href="">글쓰기</a> <br /></p>			
		</div>
			
	</div>
</body>
</html>