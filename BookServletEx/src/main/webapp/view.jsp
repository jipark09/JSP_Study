<%@page import="kr.ac.jipark09.Book"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��������</title>
</head>
<body>
<%
	if(request.getAttribute("wrongPassword") != null) {
%>
	<script>
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
	</script>
<%
	}
%>
	<h1>view</h1>
	<a href="list.book">å ����ϱ�</a>
	<hr>
	<jsp:useBean id="book" class="kr.ac.jipark09.Book" scope="request" />
	<form>
		��ȣ: <input type="text" name="num" value="<%=book.getNum()%>" readonly="readonly"><br>
		����: <input type="text" name="title" value="<%=book.getTitle()%>"><br>
		����: <input type="text" name="writer" value="<%=book.getWriter()%>"><br>
		����: <input type="text" name="price" value="<%=book.getPrice()%>"><br>
		���ǻ�: <input type="text" name="publisher" value="<%=book.getPublisher()%>"><br>
		�ڸ�Ʈ
		 <textarea rows="3" cols="20" name=comment><%= book.getComment() %>.</textarea><br>
		 �����̳� ������ �Ϸ��� ��й�ȣ�� �Է��ϼ���: <input type="password" name="pw"><br>
		 <input type="button" value="�����ϱ�" onclick="updateBook(this.form, 'modify')"> 
		 <input type="button" value="�����ϱ�" onclick="updateBook(this.form, 'delete')">
		 <input type="reset" name="����">
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