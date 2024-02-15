<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
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
			width: 800px;
			height: 400px;
			margin: 0 auto;
			color:white;
			}
			h1{
			text-align: center;
			}
			p{
			text-align: right;
			}
</style>
<body>
	<div id="wrap">
		<h1>새글등록</h1>
		
		<form action="./writeCtrl.jsp" method="post">
			<input type="hidden" name="userid" value="${userid }" />
			<fieldset>
				<legend>내용입력</legend>
				<table>
				   <tbody>
                        <tr>
                            <th scope="row"><label for="title">제목</label></th>
                            <td>
                                <input type="text" id="title" name="title" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="nickname"></label>등록자</th>
                            <td><input type="text" id="nickname" name="nickname" value="${name }" readonly /></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="content">내용</label></th>
                            <td>
                                <textarea name="content" cols="40" rows="10"></textarea>
                            </td>
                        </tr>                        
                   </tbody>  
				</table>
			</fieldset>
			<p><button>글등록</button></p>
		</form>
	</div>
</body>
</html>