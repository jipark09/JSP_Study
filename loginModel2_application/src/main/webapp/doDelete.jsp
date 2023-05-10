<%@page import="org.JTI.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "jspfs/checkSession.jspf" %>
<%
	String cmd = "deleteFailed";
	
	if(MemberManager.deleteMember(application, member.getId())) {
		session.invalidate();
		cmd = "deleteOk";
	}
	response.sendRedirect(request.getContextPath() + "?cmd=" + cmd);
%>