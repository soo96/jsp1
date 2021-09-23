<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CustomerDao dao = CustomerDao.getInstance();
	List<Customer> list = dao.selectAll();
	request.setAttribute("list", list);
	pageContext.forward("list_view.jsp");
%>

<!-- list.jsp 파일은 사용자 입력과 출력은 포함하고 있지 않고 
	데이터의 처리, db sql 실행 메소드 호출 등으로 프로그래밍되어있어서
	.java 형식으로도 작성될 수 있다. -->
