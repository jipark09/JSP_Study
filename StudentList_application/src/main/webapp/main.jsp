<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.ac.jipark09.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String contentPage = request.getParameter("page");
	
	if(contentPage == null) {
		contentPage = "studentList";
	}
	contentPage = "/module/" + contentPage + ".jsp";

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan="2">
				<jsp:include page="/module/logo.jsp"/>
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="/module/menu.jsp"/>
			</td>
			<td>
				<jsp:include page="<%=contentPage %>"/>
			</td>
		</tr>
	</table>
</body>
</html>