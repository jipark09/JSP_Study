package kr.ac.jipark09;

import java.util.ArrayList;

public class BookDB {
	private ArrayList<Book> bookList;
	private int num = 1;
	
	// Singleton: ������ �� �ϳ��� ��ü�� ����
	// �аų� ���ų��Ҷ� ������ ����� �ǵ帮�� �Ǳ� ������ �׷� ���� �����ϱ� ���� �̱������� �����. => ������ ������ ���ϵ���!
	private static final BookDB instance = new BookDB();
	
	private BookDB() {
		bookList = new ArrayList<Book>();
	}
	
	public static BookDB getInstance() {
		return  instance;
	}
	
	// �߰�
	public void addBook(Book book) {
		book.setNum(num);
		num++;
		bookList.add(0, book);
	}
	
	public ArrayList<Book> getList() {
		return bookList;
	}
	
	// ����
	public void deleteBook(int num) {
		Book book = new Book(num);
		int idx = bookList.indexOf(book);
		
		if(idx != -1) {
			bookList.remove(idx);
		}
	}
	
	// ����
	public void modifyBook(Book book) {
		int idx = bookList.indexOf(book);
		
		if(idx != -1) {
			bookList.set(idx, book);
		}
	}
	
	// å �ϳ� ���ϱ�
	public Book getBookByNum(int num) {
		Book book = new Book(num);
		return bookList.get(bookList.indexOf(book));
	}

}
