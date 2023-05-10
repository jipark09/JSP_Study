<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login Success</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript">
		
		function goLogout() {
			location.href = "logout.jsp";
		}
		
		function goInfo() {
			var obj = document.successForm;
			obj.action = "goInfo.jsp";
			obj.method = "post";
			obj.submit();
		}
	
	</script>
	
	
</head>
<body>
	<p class="titleStr">Success!!</p>
	<form name="successForm">
		<div class="centerBox">
			<div class="btns">
				<input type="button" value="정보 보기" onclick="goInfo()"/>
				<input type="button" value="로그아웃" onclick="goLogout()"/>
			</div>
		</div>
		<div class="msgBox">
			<%= session.getAttribute("msg") %>
		
		</div>
	</form>

</body>
</html>
<%@ include file= "removeMessage.jspf" %>