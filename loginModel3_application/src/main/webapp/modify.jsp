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
	<div id="titleBox">정보수정</div>
	<div id="mainBox">
		<form method="post">
			<label for="id">ID</label>
			<input type="text" name="id" title="아이디" value="<%=user.getId()%>" readonly="readonly"><br>
			
			<label for="pw">Password</label>
			<input type="password" name="pw" title="비밀번호"><br>
			
			<label for="retry">Retry</label>
			<input type="password" name="retry" title="비밀번호"><br>
			
			<label for="nick">NickName</label>
			<input type="text" name="nick" title="닉네임" value="<%=user.getNick()%>"><br>
			
			<input type="button" value="수정" onclick="doWhat(this.form, 'doModify', true)">
			<input type="button" value="취소" onclick="doWhat(this.form, 'cancelModify')">
			<input type="hidden" name="cmd">
		</form>
	</div>
	<div id="msgBox"<%=request.getAttribute("msg") %>></div>
	

</body>
</html>