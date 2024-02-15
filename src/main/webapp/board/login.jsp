<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<h1>로그인</h1>
		<form action="./loginCtrl.jsp" method = "post">
			<fieldset>
				<legend>모델1- 게시판</legend>
				
				<ul>
					<li>
						<label for="userid">아이디</label>
						<input type="text" id="userid" name="userid" value="dong" />
					</li>
					
					<li>
						<label for="password">비밀번호</label>
						<input type="password" id="password" name="password" value="2558" />
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