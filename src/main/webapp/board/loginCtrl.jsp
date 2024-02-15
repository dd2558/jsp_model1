<%@page import="model.UserDTO"%>
<%@page import="ioc.Factory"%>
<%@page import="srv.UserService"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 로그인 승인을 처리하는 로직 -> 화면디자인이 필요없다 -->

<%
	//request.setCharacterEncoding("utf-8");	
	//filter를 적용하여 위 코드 생략
	//사용자가 입력한 데이터 수신
	
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	Map<String,String> loginInfo = new HashMap<String,String>();
	
	loginInfo.put("userid",userid);
	loginInfo.put("password",password);
	
	//DB에 조회요청
	//어떤서비스객체.메소드(loginInfo);
	UserService userSrv = Factory.INSTANCE.getUserSrv();
	UserDTO dto = userSrv.getOne(loginInfo);
	/*
		select * from user where userid=#{userid} and password=#{password}
		위의 쿼리문을 dao가 mybatis를 이용해서 실행 -> 결과리턴 UserVO
		
		srv객체가 dao를 통해서 조회부탁
		
		컨트롤러에서 srv에 loginInfo를 넘기면서 부탁
	*/
	
	
	if(dto!=null){//로그인성공
	  session.setAttribute("userid", dto.getUserid());
	  session.setAttribute("name", dto.getName());
	  response.sendRedirect("./list.jsp");
	}else{//실패
	  response.sendRedirect("../index.jsp");
	}
%>