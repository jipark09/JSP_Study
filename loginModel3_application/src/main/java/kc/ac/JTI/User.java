package kc.ac.JTI;

public class User {
	private String id;
	private String pw;
	private String nick;
	
	public User() {}
	
	public User(String id, String pw, String nick) {
		setId(id);
		setPw(pw);
		setNick(nick);
		
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

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}
	
	@Override
	public boolean equals(Object object) {
		if(object == null || !(object instanceof User)) {
			return false;
		}
		if(this == object) {
			return true;
		}
		
		User user = (User) object;
		return id.equals(user.getId());
	}
	
	@Override
	public String toString() {
		return id + " " + pw + " " + nick;
	}
}
