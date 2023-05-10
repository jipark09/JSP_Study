<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	
	session = request.getSession();
	session.setAttribute("msg", "로그아웃 되었습니다.");
%>
<jsp:forward page="loginForm.jsp" />