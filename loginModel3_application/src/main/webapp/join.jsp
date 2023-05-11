<%@page import="kc.ac.JTI.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="script/common.js"></script>
</head>
<%
	User user = (User)request.getAttribute("user");
	
	if(user == null) {
		user = new User("", "", "");
	}
%>
<body>
	<div id="titleBox">회원가입</div>
	<div id="mainBox">
		<form method="post">
			<label for="id">ID</label>
			<input type="text" name="id" title="아이디" value="<%=user.getId()%>"><br>
			
			<label for="pw">Password</label>
			<input type="password" name="pw" title="비밀번호" value="<%=user.getPw()%>"><br>
			
			<label for="retry">Retry</label>
			<input type="password" name="retry" title="비밀번호" value="<%=user.getPw()%>"><br>
			
			<label for="nick">NickName</label>
			<input type="text" name="nick" title="닉네임" value="<%=user.getNick()%>"><br>
			
			<input type="button" value="가입" onclick="doWhat(this.form, 'doJoin', true)">
			<input type="button" value="취소" onclick="doWhat(this.form, 'cancelJoin')">
			<input type="hidden" name="cmd">
		</form>
	</div>
	<div id="msgBox"<%=request.getAttribute("msg") %>></div>

</body>
</html>