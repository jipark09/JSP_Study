<%@page import="org.JTI.MemberManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "checkSession.jspf" %>
<%
	if(MemberManager.deleteMember(application, member.getId())) {
		session.invalidate();
		session = request.getSession();
		session.setAttribute("msg", "회원탈퇴가 완료되었습니다.");
		response.sendRedirect("loginForm.jsp");
	} else {
		session.setAttribute("msg", "회원탈퇴 중 오류가 발생했습니다.");
	
%>
	<jsp:forward page="info.jsp" />
<%
	}
%>