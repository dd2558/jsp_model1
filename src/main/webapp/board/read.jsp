<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int seq = 0;
	
	String seq_ = request.getParameter("seq");
	
	if(!seq_.isEmpty()){
	  seq = Integer.valueOf(seq_);
	}
	
	BoardService boardSrv = Factory.INSTANCE.getBoardSrv();
	request.setAttribute("dto", boardSrv.getOne(seq));
	
	
%>    
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
			p>a{
			padding: 5px;
			background-color: white;
			text-decoration:none;
			color:black;
			font-size: 14px;
			}
</style>
</head>
<body>
   <div id="wrap">
      <h1>상세 게시글</h1>
      <form action="./editCtrl.jsp" method="post">
      	<input type="hidden" name="seq" value="${dto.seq }" />
         <fieldset>
            <legend>글내용</legend>
            
            <table>
               <tbody>
                        <tr>
                            <th scope="row"><label for="title">제목</label></th>
                            <td>
                                <input type="text" id="title" name="title"  value="${dto.title }"/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="nickname" ></label>닉네임</th>
                            <td><input type="text" id="nickname" name="nickname" value="${dto.nickname }" readonly /></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="content">내용</label></th>
                            <td>
                                <textarea name="content" cols="40" rows="10">${dto.content }</textarea>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">등록일</th>
                            <td>
                            	${dto.regdate }
                            </td>
                        </tr>                                    
                        <tr>
                            <th scope="row">조회수</th>
                            <td>
                            	${dto.cnt }
                            </td>
                        </tr>                                    
                   </tbody>  
            </table>
         </fieldset>
         <p><button>수정하기</button></p>
      </form>
      <p>
      	<a href="./write.jsp">글등록</a> <br />
      </p>
      	<p><a href="./deleteCtrl.jsp?seq=${dto.seq}">글삭제</a> <br /></p>
      	<p><a href="./list.jsp">글목록</a> <br /></p>
      	
   </div>
</body>
</html>