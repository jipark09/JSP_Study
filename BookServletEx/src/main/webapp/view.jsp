<%@page import="kr.ac.jipark09.Book"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상세페이지</title>
</head>
<body>
<%
	if(request.getAttribute("wrongPassword") != null) {
%>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
	</script>
<%
	}
%>
	<h1>view</h1>
	<a href="list.book">책 등록하기</a>
	<hr>
	<jsp:useBean id="book" class="kr.ac.jipark09.Book" scope="request" />
	<form>
		번호: <input type="text" name="num" value="<%=book.getNum()%>" readonly="readonly"><br>
		제목: <input type="text" name="title" value="<%=book.getTitle()%>"><br>
		저자: <input type="text" name="writer" value="<%=book.getWriter()%>"><br>
		가격: <input type="text" name="price" value="<%=book.getPrice()%>"><br>
		출판사: <input type="text" name="publisher" value="<%=book.getPublisher()%>"><br>
		코멘트
		 <textarea rows="3" cols="20" name=comment><%= book.getComment() %>.</textarea><br>
		 수정이나 삭제를 하려면 비밀번호를 입력하세요: <input type="password" name="pw"><br>
		 <input type="button" value="수정하기" onclick="updateBook(this.form, 'modify')"> 
		 <input type="button" value="삭제하기" onclick="updateBook(this.form, 'delete')">
		 <input type="reset" name="리셋">
	</form>
	<script>
		function updateBook(updateForm, what) {
			updateForm.action = what + ".book";
			updateForm.method = "post";
			updateForm.submit();
		}
	</script>
</body>
</html>