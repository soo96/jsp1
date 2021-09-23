<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int idx = Integer.parseInt(request.getParameter("idx"));	/* input에 hidden으로 파라미터 설정해준다. */
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	if(addr.equals("기타")) addr= request.getParameter("addr_etc");
	
	Customer cus = new Customer();
	cus.setEmail(email);
	cus.setAddr(addr);
	cus.setIdx(idx);	//메소드에서 사용하려고 넘겨줌
	CustomerDao dao = CustomerDao.getInstance();
	dao.update(cus);		//메소드 실행에 필요한 모든 값이 cus 객체에 저장되어있는지 확인 필요.
	
	//response.sendRedirect("list.jsp");
	response.sendRedirect("update.jsp?alert=&idx="+idx);
%>