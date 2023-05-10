package org.JTI;

public class Member {
	private String id;
	private String pw;
	private String name;
	private String nick;
	
	public Member() {}
	
	public Member(String id) {
		setId(id);
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	@Override
	public boolean equals(Object object) {
		if(object == null || !(object instanceof Member)) {
			return false;
		}
		Member member = (Member) object;
		return id.equals(member.getId());
	}
	
	@Override
	public String toString() {
		return "Member [id= " + id + ", pw= " + pw + ", name= " + name + ", nick= " + nick;
	}

	
}
