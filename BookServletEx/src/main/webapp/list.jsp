<%@page import="kr.ac.jipark09.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>목록화면</title>
</head>
<body>
	<h1>list</h1>
	<a href="add.book">책 등록하기</a>
	<hr>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>저자</th>
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