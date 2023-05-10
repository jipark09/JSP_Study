<%@page import="org.JTI.MemberManager"%>
<%@page import="org.JTI.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)session.getAttribute("msg");
	
	if(msg == null) {
		msg = "모든 항목은 필수입력입니다.";
	}
	
	Member member = (Member)session.getAttribute("tempMember");
	
	if(member == null) {
		member = MemberManager.getBlankMember();
	}
	session.removeAttribute("tempMember");

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>join.jsp</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript">
	
		function checkAndMove() {
			var obj = document.joinForm;
			
			var flag = true;
			for(var i = 0; flag && i < obj.length; i++) {
				if(obj[i].type.toLowerCase() != "button") {
					if(obj[i].value.trim().length == 0) {
						document.getElementById("msg").innerHTML = "필수입력항목 누락: " + obj[i].title;
						flag = false;
					}
				}
			}
			
			if(flag) {
				if(obj.pw.value != obj.re.value) {
					document.getElementById("msg").innerHTML = "비밀번호가 일치하지 않습니다.";
					flag = false;
				}
			}
			
			if(flag) {
				obj.method = "post";
				obj.action = "doJoin.jsp";
				obj.submit();
			}
		}
		
		function cancelJoin() {
			location.href="cancelJoin.jsp";
		}
	</script>
</head>
<body>
	<p class="titleStr">Join Member</p>
	<form name="joinForm">
		<div class="centerBox">
			<label for="id">ID : </label>
			<input type="text" name="id" title="ID" value="<%= member.getId() %>"><br>
			
			<label for="pw">PW : </label>
			<input type="password" name="pw" title="PASSWORD"><br>
			
			<label for="re">Retry : </label>
			<input type="password" name="re" title="RETRY"/><br>
			
			<label for="name">Name : </label>
			<input type="text" name="name" title="NAME" value="<%= member.getName()%>"><br>
			
			<label for="nick">Nick : </label>
			<input type="text" name="nick" title="NICKNAME" value="<%= member.getNick()%>"><br>
			
			<div calss="btns">
				<input type="button" value="회원가입" onclick="checkAndMove()">
				<input type="button" value="취소" onclick="cancelJoin()">
			</div>
			
		</div>
		<div class="msgBox" id="msg">
			<%= msg %>
		</div>
	
	</form>

</body>
</html>
<%@ include file= "removeMessage.jspf"%>