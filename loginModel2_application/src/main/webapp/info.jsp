<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="jspfs/checkSession.jspf" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>info</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="script/scripts.js"></script>
</head>
<body>
	<p class="titleStr">Info</p>
	<form name="infoForm">
		<div class="centerBox">
			<label for="id">ID : </label>
			<input type="text" name="id" title="ID" value="<%= member.getId() %>" readonly><br>
			
			<label for="pw">PW : </label>
			<input type="password" name="pw" title="PASSWORD"><br>
			
			<label for="re">Retry : </label>
			<input type="password" name="re" title="RETRY"><br>
			
			<label for="name">Name : </label>
			<input type="text" name="name" title="NAME" value="<%= member.getName()%>" readonly><br>
			
			<label for="nick">Nick : </label>
			<input type="text" name="nick" title="NICKNAME" value="<%= member.getNick()%>"><br>
			
			<div class="btns">
				<input type="button" value="수정" onclick="checkAndMove(this.form, 'doUpdate', true)">
				<input type="button" value="취소" onclick="justMove(this.form, 'backToSuccess')">
				<input type="button" value="회원탈퇴" onclick="doDelete(this.form)">
			
			</div>
		</div>
		<div class="msgBox" id="msg">
			<%= session.getAttribute("msg") %>
		</div>
		<input type="hidden" name="cmd">
	</form>
</body>
</html>
<%@ include file= "jspfs/removeMessage.jspf" %>