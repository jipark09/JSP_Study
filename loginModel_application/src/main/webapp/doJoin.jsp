<%@page import="org.JTI.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="org.JTI.Member" />
<jsp:setProperty property="*" name="member" />

<%
	String msg = "회원가입 성공";
	String nextPage = "loginForm.jsp";
	
	if(!MemberManager.addMember(application, member)) {
		msg = "이미 존재하는 아이디 입니다.";
		session.setAttribute("tempMember", member);
		nextPage = "join.jsp";
	}
	session.setAttribute("msg", msg);
	response.sendRedirect(nextPage);

%>