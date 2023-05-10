<%@page import="kr.ac.jipark09.StudentManager"%>
<%@page import="kr.ac.jipark09.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String tel = request.getParameter("tel");
	String grade = request.getParameter("grade");
	String group = request.getParameter("group");
	
	char chGroup = group.charAt(0);
	if(chGroup >= 'A' && chGroup <= 'Z') {
	
		int gradeInt = 0;
		
		try {
			gradeInt = Integer.parseInt(grade);
			
		} catch(NumberFormatException e) {
	%>
			<script>
				alert("숫자를 입력해 주세요");
				history.go(-1);
			</script>
		
	<%
			return;
		}
	
		Student student = StudentManager.getStudent(Integer.parseInt(id));
		student.setTel(tel);
		student.setGrade(gradeInt);
		student.setGroup(chGroup);
				
		
		response.sendRedirect(request.getContextPath() + "/main.jsp");
		
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
	
	

