<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)session.getAttribute("msg");

	if(msg == null) {
		msg = "어서오세요";
	}

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript">
	
		function goJoin() {
			location.href = "join.jsp";
		}
		
		function checkLogin() {
			var obj = document.loginForm;
			obj.action = "checkLogin.jsp";
			obj.method = "post";
			obj.submit();
		}
		
	</script>
</head>
<body>
	<p class="titleStr">Login</p>
	<form name="loginForm">
		<div class="centerBox">
			<label for="id">ID :</label><input type="text" name="id"><br>
			<label for="pw">PW :</label><input type="password" name="pw"><br>
			
			<div class="btns">
				<input type="button" value="로그인" onclick="checkLogin()"/>
				<input type="button" value="회원가입" onclick="goJoin()"/>
			</div>
		</div>
		<div class="msgBox">
			<%= msg %>
		</div>
	</form>
</body>
</html>
<%@ include file= "removeMessage.jspf"%>