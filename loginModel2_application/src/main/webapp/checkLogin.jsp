<%@page import="org.JTI.MemberManager"%>
<%@page import="org.JTI.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Member member = MemberManager.findMember(application, id);
	
	String cmd;
	
	if(member == null) {
		cmd = "idNotExists";
	} else {
		if(!member.getPw().equals(pw)) {
			cmd = "wrongPassword";
		} else {
			session.setAttribute("loginMember", member);
			cmd = "loginOk";
		}
	}
	response.sendRedirect(request.getContextPath() + "?cmd=" + cmd);
	
%>
