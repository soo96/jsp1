<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[4] - db 회원 리스트</title>
<style type="text/css">
		ul{
			display: flex;
			list-style: none;
			justify-fontent: sapce-between;
			padding-inline-start:0px;
		}
		ul #name{
			padding : 5px 20px;
			marghin : 5px 0px;
			background-color: tomato;
			color: white;
		}
		ul .name_first{
			padding : 5px 20px;
			marghin : 5px 0px;
			background-color: black;
			color: white;
		}
		ul>#email{width : 20vw;}
		ul>#hobby{width : 20vw;}
		li{
			width: 100px;
			padding: 5px 20px;
			marghin : 5px 0px;
			border: 1px solid gray;
			border-radius: 3px;
		}
	</style>
</head>
<body>
<h3>환영합니다. WELCOME!!!</h3>
	<ul>
		<li class="name_first">성함</li>
		<li id="email" class="name_first"> 이메일 </li>
		<li class="name_first"> 나이 </li>
		<li class="name_first"> 지역 </li>
		<li class="name_first"> 성별 <%-- : <%= (gender.equals("male")?"남":"여") %> --%></li>
		<li id="hobby" class="name_first"> 취미 </li>
	</ul>
<%
	List<Customer> list = (List<Customer>)request.getAttribute("list");	//다음주에는 이것도 없앨거다.
	for(Customer cus : list){
%>
	<ul>
		<li id="name"><a href="update.jsp?idx=<%=cus.getIdx()%>">
					<%= cus.getName() %></a> 님</li>
		<li id="email"> <%= cus.getEmail() %> </li>
		<li> <%= cus.getAge() %> </li>
		<li> <%= cus.getAddr() %> </li>
		<li> <%= (cus.getGender().equals("male")?"남":"여") %></li>
		<li id="hobby"> <%= cus.getHobby() %> </li>
	</ul>
	<%
	}
	%>
</body>
</html>