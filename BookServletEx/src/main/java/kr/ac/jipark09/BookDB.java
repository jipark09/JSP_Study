package kr.ac.jipark09;

import java.util.ArrayList;

public class BookDB {
	private ArrayList<Book> bookList;
	private int num = 1;
	
	// Singleton: 유일한 단 하나의 객체를 보장
	// 읽거나 쓰거나할때 동일한 대상을 건드리게 되기 때문에 그런 것을 방지하기 위해 싱글톤으로 만든다. => 여러개 만들지 못하도록!
	private static final BookDB instance = new BookDB();
	
	private BookDB() {
		bookList = new ArrayList<Book>();
	}
	
	public static BookDB getInstance() {
		return  instance;
	}
	
	// 추가
	public void addBook(Book book) {
		book.setNum(num);
		num++;
		bookList.add(0, book);
	}
	
	public ArrayList<Book> getList() {
		return bookList;
	}
	
	// 삭제
	public void deleteBook(int num) {
		Book book = new Book(num);
		int idx = bookList.indexOf(book);
		
		if(idx != -1) {
			bookList.remove(idx);
		}
	}
	
	// 수정
	public void modifyBook(Book book) {
		int idx = bookList.indexOf(book);
		
		if(idx != -1) {
			bookList.set(idx, book);
		}
	}
	
	// 책 하나 구하기
	public Book getBookByNum(int num) {
		Book book = new Book(num);
		return bookList.get(bookList.indexOf(book));
	}

}
