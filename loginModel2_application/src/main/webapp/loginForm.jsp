<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="script/scripts.js"></script>
</head>
<body>
	<p class="titleStr">Login</p>
	<form name="loginForm">
		<div class="centerBox">
			<label for="id">ID :</label><input type="text" name="id"><br>
			<label for="pw">PW :</label><input type="password" name="pw"><br>
			
			<div class="btns">
				<input type="button" value="로그인" onclick="checkAndMove(this.form, 'checkLogin')"/>
				<input type="button" value="회원가입" onclick="justMove(this.form, 'goJoin')"/>
			</div>
		</div>
		<div class="msgBox">
			<% String msg = (String)session.getAttribute("msg"); %>
			<%= msg == null ? "어서오세요!" : msg %>
		</div>
		<input type="hidden" name="cmd">
	</form>
</body>
</html>
<%@ include file= "jspfs/removeMessage.jspf"%>