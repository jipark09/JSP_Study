<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="jspf/checkLogin.jspf" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>loginSuccess.jsp</title>
	<link rel="stylesheet" type="text/css" href="style/main.css">
	<script type="text/javascript" src="script/common.js"></script>
</head>
<body>
	<div id="titleBox">로그인 성공</div>
	<div id="mainBox">
	<form>
		<input type="button" value="회원정보수정" onclick="doWhat(this.form, 'goModify')">
		<input type="button" value="로그아웃" onclick="doWhat(this.form, 'logout')">
		<input type="button" value="회원탈퇴" onclick="doWhat(this.form, 'goWithdraw')">
		<input type="hidden" name="cmd">
	</form>
	</div>
	<div id="msgBox"><%= request.getAttribute("msg") %></div>

</body>
</html>