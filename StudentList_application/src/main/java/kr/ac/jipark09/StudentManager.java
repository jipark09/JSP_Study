package kr.ac.jipark09;

import java.util.ArrayList;

import javax.servlet.ServletContext;

public class StudentManager {
	private static ArrayList<Student> studentList;
	
	public static ArrayList<Student> getList(ServletContext application) {
		studentList = (ArrayList<Student>)application.getAttribute("list");
		
		if(studentList == null) {
			studentList = new ArrayList<>();
			application.setAttribute("list", studentList);
		}
		return studentList;
		
	}
	
	// 학생 추가하기
	public static void addStudent(Student student, ServletContext application) {
		studentList.add(student);
		application.setAttribute("list", studentList);
	}
	
	// 학생 정보 찾기 id
	public static Student getStudent(int id) {
		return studentList.get(studentList.indexOf(new Student(id)));
	}
	
	// 학생 정보 찾기 name
	public static Student getStudentName(String name) {
		Student student1 = null;
	
		for(Student student : studentList) {
			if(student.getName().equals(name)) {
				student1 = student;
			}
		}
		return student1;
	}
	
	// 학생 그룹 다 빼오기: Group
	public static ArrayList<Student> getStudentGroup(char group, ServletContext application) {
		ArrayList<Student> groupList = new ArrayList<>();
		
		for(Student student : studentList) {
			if(student.getGroup() == group) {
				groupList.add(student);
			}
		}
		return groupList;
	}
	
	// 이름 중복 확인
    public static boolean isNameOverlap(String name) {
    	return studentList.contains(new Student(name));
    }
    
    // 학생 삭제
	public static void withdraw(int id, ServletContext application) {
       studentList.remove(getStudent(id));
       application.setAttribute("list", studentList);
    }
	
	// 회원인지 아닌지 확인
	public static boolean contains(Student student) {
		return studentList.contains(student);
	}

}
