package kr.ac.jipark09;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.jipark09.cmds.CmdFactory;

public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    @Override
	public void init() throws ServletException {
		super.init();
		CmdFactory.init();
	}

	public MainServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc_kr");
		process(request, response);
	}
	
	// 기능같은 거 넣을 때 그 일을 수행하는 Cmd객체만 건들면 된다. 그 객체를 서블릿에다 등록만 해 주면 된다.
	// 이런 구조를 배우면 spring을 할때 수월해 진다.
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getRequestURI().substring(request.getContextPath().length()); // /list.book
		CmdFactory.doAction(request, cmd);
		
		String nextpage = MyViewResolver.getNextPage(cmd.substring(1, cmd.lastIndexOf("."))); // list.jsp
		System.out.println(nextpage);
		String temp = (String)request.getAttribute("nextpage");
		
		if(temp != null) {
			nextpage = temp;
		}
		
		if(request.getAttribute("isRedirect") != null) {
			response.sendRedirect(request.getContextPath());
		} else {
			request.getRequestDispatcher(nextpage).forward(request, response);
		}
	}
}
