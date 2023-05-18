package kr.ac.jipark09;

public class Book {
	private int num; // 식별자
	private String title;
	private String writer;
	private String password;
	private int price;
	private String publisher;
	private String comment;
	
	public Book() {}

	// 검색용
	public Book(int num) {
		setNum(num);
	}

	// add 할때
	public Book(String title, String writer, String password, int price, String publisher, String comment) {
		super();
		this.title = title;
		this.writer = writer;
		this.password = password;
		this.price = price;
		this.publisher = publisher;
		this.comment = comment;
	}

	// 읽어올때
	public Book(int num, String title, String writer, String password, int price, String publisher, String comment) {
		super();
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.password = password;
		this.price = price;
		this.publisher = publisher;
		this.comment = comment;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Book [num=" + num + ", title=" + title + ", writer=" + writer + ", password=" + password + ", price="
				+ price + ", publisher=" + publisher + ", comment=" + comment + "]";
	}
	
	@Override
	public boolean equals(Object object) {
		if(object == null || !(object instanceof Book)) {
			return false;
		}
		Book temp = (Book) object;
		return num == temp.getNum();
	}
}
