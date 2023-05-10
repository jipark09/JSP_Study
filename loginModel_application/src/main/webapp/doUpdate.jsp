<%@page import="org.JTI.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="checkSession.jspf" %>
<%
	request.setCharacterEncoding("utf-8");

	member.setPw(request.getParameter("pw"));
	member.setNick(request.getParameter("nick"));
	
	MemberManager.updateMember(application, member);
	session.setAttribute("msg", "회원정보가 수정되었습니다.");
	response.sendRedirect("loginSuccess.jsp");
	
%>