<%@page import="org.JTI.MemberManager"%>
<%@page import="org.JTI.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Member member = MemberManager.findMember(application, id);
	String msg;
	String nextPage = "loginForm.jsp";
	
	if(member == null) {
		msg = "가입 후 이용해 주세요.";
		
	} else {
		if(!member.getPw().equals(pw)) {
			msg = "비밀번호가 일치하지 않습니다.";
		} else {
			msg = member.getNick() + "님 환영합니다.";
			nextPage = "loginSuccess.jsp";
			session.setAttribute("member", member);
			
		}
	}
	session.setAttribute("msg", msg);
%>
<jsp:forward page="<%= nextPage %>" />