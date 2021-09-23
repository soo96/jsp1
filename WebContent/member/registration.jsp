<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//서버에서 데이터 처리를 위한 자바코드
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");
	if(addr.equals("기타")) addr= request.getParameter("addr_etc");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String hobbies = Arrays.toString(request.getParameterValues("hobby"));
	hobbies = hobbies.substring(1,hobbies.length()-1);
	
	String password = request.getParameter("password");
	Customer cus = new Customer(0,name,password,email,addr,gender,age,hobbies);
	CustomerDao dao = CustomerDao.getInstance();
	dao.insert(cus);
	//1) 추가된 회원정보만 확인하기		★★★★ 매우 중요 ★★★★
	//request.setAttribute("cus", cus);
	//pageContext.forward("registration_view.jsp");
	//2) 사용자가 요청하지 않았지만 회원리스트 list.jsp로 요청 바꾸기	★★★★ 매우 중요 ★★★★
	response.sendRedirect("list.jsp");
%>







