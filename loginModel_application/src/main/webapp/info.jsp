<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="checkSession.jspf" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>info</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript">
		
		function doUpdate() {
			var obj = document.infoForm;
			
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
				obj.action = "doUpdate.jsp";
				obj.submit();
			}
		}
		
		function cancelInfo() {
			location.href = "cancelInfo.jsp";
		}
		
		function deleteMember() {
			if(window.confirm("정말 탈퇴하시겠습니까?")) {
				location.href = "doDelete.jsp";
			}
		}
	
	</script>
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
				<input type="button" value="수정" onclick="doUpdate()">
				<input type="button" value="취소" onclick="cancelInfo()">
				<input type="button" value="회원탈퇴" onclick="deleteMember()">
			
		</div>
		<div class="msgBox" id="msg">
			<%= session.getAttribute("msg") %>
		</div>
			
		
		</div>
	
	</form>

</body>
<%@ include file= "removeMessage.jspf" %>
</html>