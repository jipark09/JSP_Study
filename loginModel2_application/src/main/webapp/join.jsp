<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>join.jsp</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="script/scripts.js"></script>
</head>
<body>
	<p class="titleStr">Join Member</p>
	<form name="joinForm">
		<div class="centerBox">
			<label for="id">ID : </label>
			<input type="text" name="id" title="ID"><br>
			
			<label for="pw">PW : </label>
			<input type="password" name="pw" title="PASSWORD"><br>
			
			<label for="re">Retry : </label>
			<input type="password" name="re" title="RETRY"/><br>
			
			<label for="name">Name : </label>
			<input type="text" name="name" title="NAME"><br>
			
			<label for="nick">Nick : </label>
			<input type="text" name="nick" title="NICKNAME"><br>
			
			<div class="btns">
				<input type="button" value="회원가입" onclick="checkAndMove(this.form, 'doJoin', true)">
				<input type="button" value="취소" onclick="justMove(this.form, 'cancelJoin')">
			</div>
			
		</div>
		<div class="msgBox" id="msg">
			<%= session.getAttribute("msg") %>
		</div>
		<input type="hidden" name="cmd">
	</form>

</body>
</html>
<%@ include file= "jspfs/removeMessage.jspf"%>