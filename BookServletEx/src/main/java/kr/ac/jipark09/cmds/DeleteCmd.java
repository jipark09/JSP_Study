package kr.ac.jipark09.cmds;

import javax.servlet.http.HttpServletRequest;

import kr.ac.jipark09.Book;
import kr.ac.jipark09.BookDB;
import kr.ac.jipark09.MyViewResolver;

public class DeleteCmd implements ICmd {

	@Override
	public void action(HttpServletRequest request) {
		BookDB dao = BookDB.getInstance();
		
		int num = Integer.parseInt(request.getParameter("num"));
		Book oldBook = dao.getBookByNum(num);
		String password = request.getParameter("pw");
		
		if(oldBook.getPassword().equals(password)) {
			dao.deleteBook(num);
			request.setAttribute("isRedirect", true);
		} else {
			request.setAttribute("book", oldBook);
			request.setAttribute("wrongPassword", "");
			// 비밀번호 틀렸을때 !
			request.setAttribute("nextpage", MyViewResolver.getNextPage("view"));
		}
	}

}
