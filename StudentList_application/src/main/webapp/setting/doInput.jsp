<%@page import="kr.ac.jipark09.StudentManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.ac.jipark09.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%	
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	int grade = Integer.parseInt(request.getParameter("grade"));
	char group = request.getParameter("class").charAt(0);
	
	if(group >= 'A' && group <= 'Z') {

		Student student = new Student(name, tel, grade, group);
	
		ArrayList<Student> list = StudentManager.getList(application);
		StudentManager.addStudent(student, application);
		
		response.sendRedirect(path + "/main.jsp");
		
	} else {
%>
		<script>
			alert("Class를 A-Z중에서 입력해 주세요.");
			history.go(-1);
		</script>	

<%
		return;
	}
%>		
	
	
