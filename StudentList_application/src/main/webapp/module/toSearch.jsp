<%@page import="kr.ac.jipark09.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String select = request.getParameter("select");
	String text = request.getParameter("text");
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
		    }, 2000); // 2초를 밀리초로 변환하여 설정
		</script>
<%
		return;
	} catch(NumberFormatException e) {
%>
		<script>
			alert("숫자를 입력해 주세요!");
			history.go(-1);
		</script>
<%
	}
%>
<jsp:include page="/module/search.jsp"/>
<hr>
Student List
<table border="1">
	<tr>
	    <th>ID</th>
	    <th>Name</th>
	    <th>Tel</th>
	    <th>Grade</th>
	    <th>Class</th>
	</tr>
<%	
	if(list.size() != 0) {
 		for(int i = 0; i < list.size(); i++ ) {
			Student student = list.get(i);
%>
     		<tr>
			     <td><%= student.getId() %></td>
			     <td><%= student.getName() %></td>
			     <td><%= student.getTel() %></td>
			     <td><%= student.getGrade() %></td>
			     <td><%= student.getGroup() %></td>
			 </tr>
<%
       }
	} else {
%>
       <tr>
           <td colspan="5">no data</td>
       </tr>
<%
    }
%>
</table>