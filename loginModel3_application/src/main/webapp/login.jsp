<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="style/main.css">
	<script type="text/javascript" src="script/common.js"></script>
</head>
<body>
	<div id="titleBox">로그인</div>
	<div id="mainBox">
		<form>
			<label for="id">ID</label>
			<input type="text" name="id" title="아이디"><br>
			
			<label for="pw">Password</label>
			<input type="password" name="pw" title="비밀번호"><br>
			
			<input type="button" value="로그인" onclick="doWhat(this.form, 'login', true)">
			<input type="button" value="회원가입" onclick="doWhat(this.form, 'goJoin')">
			<input type="hidden" name="cmd">
		</form>
	</div>
	<div id="msgBox"><%= request.getAttribute("msg") %></div>

</body>
</html>