<%@page import="org.JTI.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="jspfs/checkSession.jspf" %>
<%
	member.setPw(request.getParameter("pw"));
	member.setNick(request.getParameter("nick"));
	String msg = "정보변경 성공!!";
	String cmd = "updateOk";
	
	if(!MemberManager.updateMember(application, member)) {
		msg = "정보변경 중 오류가 발생헀습니다.";
		cmd = "updateFailed";
	}
	session.setAttribute("msg", msg);
	response.sendRedirect(request.getContextPath() + "?cmd=" + cmd);
%>