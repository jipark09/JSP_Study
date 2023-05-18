package kr.ac.jipark09.cmds;

import javax.servlet.http.HttpServletRequest;

import kr.ac.jipark09.Book;
import kr.ac.jipark09.BookDB;

public class DoAddCmd implements ICmd {

	@Override
	public void action(HttpServletRequest request) {
		request.setAttribute("isRedirect", true);
		BookDB dao = BookDB.getInstance();
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String pw = request.getParameter("pw");
		int price = Integer.parseInt(request.getParameter("price"));
		String publisher = request.getParameter("publisher");
		String comment = request.getParameter("comment");
		
		Book book = new Book(title, writer, pw, price, publisher, comment);
		dao.addBook(book);
		
	}
	
}
