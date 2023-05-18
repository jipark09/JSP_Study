package kr.ac.jipark09.cmds;

import javax.servlet.http.HttpServletRequest;

import kr.ac.jipark09.Book;
import kr.ac.jipark09.BookDB;
import kr.ac.jipark09.MyViewResolver;

public class ModifyCmd implements ICmd {

	@Override
	public void action(HttpServletRequest request) {
		BookDB dao = BookDB.getInstance();
		
		int num = Integer.parseInt(request.getParameter("num"));
		Book oldBook = dao.getBookByNum(num);
		String pw = request.getParameter("pw");
		
		Book newBook = new Book(
				num,
				request.getParameter("title"),
				request.getParameter("writer"),
				pw,
				Integer.parseInt(request.getParameter("price")),
				request.getParameter("publisher"),
				request.getParameter("comment")
		);
		
		if(oldBook.getPassword().equals(pw)) {
			dao.modifyBook(newBook);
			request.setAttribute("isRedirect", true);
			
		} else {
			request.setAttribute("book", newBook);
			request.setAttribute("wrongPassword", "");
			request.setAttribute("nextpage", MyViewResolver.getNextPage("view"));
		}
	}

}
