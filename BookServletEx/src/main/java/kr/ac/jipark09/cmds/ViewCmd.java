package kr.ac.jipark09.cmds;

import javax.servlet.http.HttpServletRequest;

import kr.ac.jipark09.BookDB;

public class ViewCmd implements ICmd {

	@Override
	public void action(HttpServletRequest request) {
		BookDB dao = BookDB.getInstance();
		int num = Integer.parseInt(request.getParameter("num"));
		request.setAttribute("book", dao.getBookByNum(num));
	}
 
}
