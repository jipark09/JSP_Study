<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("msg", "가입이 취소되었습니다.");
%>
<jsp:forward page="loginForm.jsp" />