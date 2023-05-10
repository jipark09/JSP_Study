<%@page import="java.util.ArrayList"%>
<%@page import="kr.ac.jipark09.Student"%>
<%@page import="kr.ac.jipark09.StudentManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select = request.getParameter("select");
	String text = request.getParameter("text");
	Student student = null;
	ArrayList<Student> list = new ArrayList<Student>();

	try {
		if(select.equals("id")) {
			list.add(StudentManager.getStudent(Integer.parseInt(text)));
		}
		if(select.equals("name")) {
			list.add(StudentManager.getStudentName(text));
		}
		if(select.equals("class")) {
			char chText = text.charAt(0);
			if(chText >= 'A' && chText <= 'Z') {
				list = StudentManager.getStudentGroup(chText, application);
			} else {
%>
			<script>
				alert("Class는 A-Z 입력만 가능합니다.");
				history.go(-1);
			</script>
<% 	
			}		
		}
	} catch(IndexOutOfBoundsException e) {
%>
		<h1>no Data!</h1>
		<script>
		    setTimeout(function() {
		        window.location.href = "http://localhost:8080/StudentList/main.jsp?page=studentList";
		    }, 2000);
		</script>
<%
	} catch(NumberFormatException e) {
%>
		<script>
			alert("숫자를 입력해 주세요!");
			history.go(-1);
		</script>
<%
	}
%>

<%
	if(list != null || list.size() != 0) {
		for(int i = list.size() - 1; i >= 0; i--) {
			student = list.get(i);
			if(student != null) {
%>		
			<form action="<%=request.getContextPath() %>/setting/doDelete.jsp" method="post">
				ID<input type="text" name="id" value="<%=student.getId()%>" readonly><br>
				Name<input type="text" name="name" value="<%=student.getName()%>"readonly><br>
				Tel<input type="text" name="tel" value="<%=student.getTel() %>"readonly><br>
				Grade<input type="text" name="grade" value="<%=student.getGrade() %>"readonly><br>
				Class<input type="text" name="group" value="<%=student.getGroup() %>"readonly><br>
				<input type="submit" value="delete">
			</form>
			<hr>
<%
			} else {
%>
				<h1>no Data!</h1>
				<script>
		    		setTimeout(function() {
		        	window.location.href = "http://localhost:8080/StudentList/main.jsp?page=studentList";
		   			}, 2000);
				</script>
<%
			}
		}
	} 
%>


