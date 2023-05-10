<%@page import="kr.ac.jipark09.StudentManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String strId = request.getParameter("id");
	int id = Integer.parseInt(strId);
	StudentManager.withdraw(id, application);
	
	response.sendRedirect(request.getContextPath() + "/main.jsp");
	
%>