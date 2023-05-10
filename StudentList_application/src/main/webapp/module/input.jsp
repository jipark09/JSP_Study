<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form action="<%=request.getContextPath() %>/setting/doInput.jsp" method="post">
	Name<input type="text" name="name"><br>
	Tel<input type="text" name="tel"><br>
	Grade<input type="text" name="grade"><br>
	Class<input type="text" name="class"><br>
	<input type="submit" value="Insert">
</form>
