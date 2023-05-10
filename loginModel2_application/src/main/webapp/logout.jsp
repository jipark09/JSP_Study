<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="jspfs/checkSession.jspf" %>
<%
	session.invalidate();
	response.sendRedirect(request.getContextPath() + "?cmd=logout");
%>
