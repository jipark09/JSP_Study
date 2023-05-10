<%@page import="kr.ac.jipark09.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	ArrayList<Student> list = StudentManager.getList(application);
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
 		for(int i = list.size() - 1; i >= 0; i--) {
			Student student = list.get(i);
%>
     		<tr>
<%
			student.setId(i + 1);
%>
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