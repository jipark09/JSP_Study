package kr.ac.jipark09.cmds;

import javax.servlet.http.HttpServletRequest;

import kr.ac.jipark09.BookDB;

public class ListCmd implements ICmd {
	public void action(HttpServletRequest request) {
		BookDB dao = BookDB.getInstance();
		request.setAttribute("list", dao.getList());
	}

}
