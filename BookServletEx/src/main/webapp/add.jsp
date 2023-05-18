<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>등록화면</title>
</head>
<body>
	<h1>add</h1>
	<a href="list.book">목록으로</a>
	<form action="doAdd.book" method="post">
		제목: <input type="text" name="title"><br>
		저자: <input type="text" name="writer"><br>
		비밀번호: <input type="password" name="pw"><br>
		가격: <input type="text" name="price"><br>
		출판사: <input type="text" name="publisher"><br>
		코멘트
		 <textarea rows="3" cols="20" name="comment"></textarea><br>
		 <input type="submit" name="추가하기">
		 <input type="reset" name="리셋">
	</form>
</body>
</html>