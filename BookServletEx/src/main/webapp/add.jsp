<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ȭ��</title>
</head>
<body>
	<h1>add</h1>
	<a href="list.book">�������</a>
	<form action="doAdd.book" method="post">
		����: <input type="text" name="title"><br>
		����: <input type="text" name="writer"><br>
		��й�ȣ: <input type="password" name="pw"><br>
		����: <input type="text" name="price"><br>
		���ǻ�: <input type="text" name="publisher"><br>
		�ڸ�Ʈ
		 <textarea rows="3" cols="20" name="comment"></textarea><br>
		 <input type="submit" name="�߰��ϱ�">
		 <input type="reset" name="����">
	</form>
</body>
</html>