<%@page import="kr.ac.jipark09.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ȭ��</title>
</head>
<body>
	<h1>list</h1>
	<a href="add.book">å ����ϱ�</a>
	<hr>
	<table>
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<%
			ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list");
		
			if(list == null || list.size() == 0) {
		%>
		<tr>
			<td colspan="3">no data</td>
		</tr>
		<%
			} else {
				for(Book book : list) {
					
		%>
		<tr onclick="showBookInfo(<%=book.getNum() %>)">
			<td><%=book.getNum() %></td>
			<td><%=book.getTitle() %></td>
			<td><%=book.getWriter() %></td>
		</tr>
		<%
				}
			}
		%>
	</table>
	<script>
		function showBookInfo() {
			location.href="view.book?num=" + arguments[0];
		}
	</script>
</body>
</html>