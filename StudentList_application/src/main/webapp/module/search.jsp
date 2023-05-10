<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form id="searchForm" action="<%=request.getContextPath() %>/main.jsp" method="post">
	검색: <select name="select">
		<option value="id">ID</option>
		<option value="name">Name</option>
		<option value="class">Class</option>
	</select>
	내용: <input type="text" name="text">
	<input type="submit" value="go">
	<%
		String menu = request.getParameter("menu");
	
		if(menu == null) {
			menu = "toSearch";
		}
	%>
	<input type="hidden" name="page" value="<%=menu %>">
</form>