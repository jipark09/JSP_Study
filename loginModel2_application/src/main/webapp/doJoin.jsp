<%@page import="org.JTI.Member"%>
<%@page import="org.JTI.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="org.JTI.Member" />
<jsp:setProperty property="*" name="member" />

<%
	String cmd = "joinOk";
	
	if(!MemberManager.addMember(application, member)) {
		cmd = "joinFailed";
	}
	response.sendRedirect(request.getContextPath() + "?cmd=" + cmd);

%>