package kr.ac.jipark09;

public class Student {
	private int id;
	private String name;
	private String tel;
	private int grade;
	private char group; // class
	
	public Student(String name, String tel, int grade, char group) {
		setName(name);
		setTel(tel);
		setGrade(grade);
		setGroup(group);
	}
	// id로 찾음
	public Student(int id) {
		setId(id);
	}
	// name으로 찾음
	public Student(String name) {
		setName(name);
	}
	// group으로 찾음
	public Student(char group) {
		setGroup(group);
	}
	
	@Override
	public boolean equals(Object object) {
		if(object == null || !(object instanceof Student)) {
			return false;
		}
		Student student = (Student) object;
		
		return id == student.getId();
		
		
	}
	
	@Override
	public String toString() {
		return id + " " + name + " " + tel + " " + grade + " " + group;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public char getGroup() {
		return group;
	}
	public void setGroup(char group) {
		this.group = group;
	}
	
	
	
}
