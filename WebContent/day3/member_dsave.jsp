<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>JSP1 프로젝트[7]</title>
	<style type="text/css">
		ul{
			list-style: none;
			padding-inline-start:0px;
		}
		ul>#name{
			padding : 5px 20px;
			marghin : 5px 0px;
			background-color: tomato;
			color: white;
		}
		li{
			padding: 5px 20px;
		}
	</style>
</head>
<body>
<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터 저장 -->
<%
	//서버에서 데이터 처리를 위한 자바코드
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");

%>
	


	<h3>환영합니다. WELCOME!!!</h3>
	<ul>
		<li id="name"> 이름 : <%= name %> 님</li>
		<li> 비밀번호 : <%= password %></li>
		<li> 이메일 : <%= email %></li>
		<li> 나이 : <%= age %>세</li>
		<li> 지역 : <%= addr %></li>
		<li> 성별 : <%= (gender.equals("male")?"남":"여") %></li>
		<li> 취미 : <%= Arrays.toString(hobby).substring(1, Arrays.toString(hobby).length()-1) %></li>
	</ul>
</body>
</html>







