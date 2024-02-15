<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
	background-color: grey;
	}
	#wrap{
		width: 400px;
		height: 200px;
		margin: 0 auto;
		text-align: center;
	}
	h1{
		text-align: center;
		color:white;
	}
		
</style>
<body>
	<div id="wrap">
		<h1>로그인</h1>
		
		<form action="./loginCtrl.jsp" method = "post">
			<fieldset>
				<legend>나만의 게시판</legend>
				
				<ul>
					<li>
						<label for="userid">ID</label>
						<input type="text" id="userid" name="userid" placeholder="Id를 입력해주세요" />
					</li>
					
					<li>
						<label for="password">Pw</label>
						<input type="password" id="password" name="password" placeholder="Pw를 입력해주세요" />
					</li>
				</ul>
				
			</fieldset>
			
			<p>
			<button>확인</button>
			<button type="reset">취소</button>
			</p>
			
		</form>
	</div>
</body>
</html>