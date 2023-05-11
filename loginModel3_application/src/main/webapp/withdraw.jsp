<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="jspf/checkLogin.jspf" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify.jsp</title>
	<link rel="stylesheet" type="text/css" href="style/main.css">
	<script type="text/javascript" src="script/common.js"></script>
</head>
<body>
	<div id="titleBox">회원탈퇴</div>
	<div id="mainBox">
		<div id="innerText">정말 탈퇴하시겠습니까?</div>
		<form>
			<input type="button" value="탈퇴" onclick="doWhat(this.form, 'doWithdraw')">
			<input type="button" value="취소" onclick="doWhat(this.form, 'cancelWithdraw')">
			<input type="hidden" name="cmd">
		</form>
	</div>
	<div id="msgBox"<%=request.getAttribute("msg") %>></div>

</body>
</html>