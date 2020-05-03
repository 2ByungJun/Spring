<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// request 객체로부터 파라미터를 가져옴.
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	System.out.println(email);
	System.out.println(password);
%>