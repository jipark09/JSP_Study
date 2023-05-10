<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login Success</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="script/scripts.js"></script>
	
	
</head>
<body>
	<p class="titleStr">Success!!</p>
	<form name="successForm">
		<div class="centerBox">
			<div class="btns">
				<input type="button" value="정보 보기" onclick="justMove(this.form, 'goInfo')"/>
				<input type="button" value="로그아웃" onclick="logout(this.form, 'goLogout')"/>
			</div>
		</div>
		<div class="msgBox">
			<%= session.getAttribute("msg") %>
		
		</div>
		<input type="hidden" name="cmd">
	</form>

</body>
</html>
<%@ include file= "jspfs/removeMessage.jspf" %>