<%@page import="kc.ac.JTI.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private ArrayList<User> getList(HttpServletRequest request) {
		ServletContext application = request.getSession().getServletContext();
		ArrayList<User> list = (ArrayList<User>)application.getAttribute("list");
		
		if(list == null) {
			list = new ArrayList<>();
			application.setAttribute("list", list);
		}
		return list;
	}

%>
<%
	if(request.getMethod().equalsIgnoreCase("post")) {
		request.setCharacterEncoding("utf-8");
	}
	
	String cmd = request.getParameter("cmd");
	if(cmd == null) {
		cmd = "start";
	}
	
	String msg = null;
	String nextpage = null;
	boolean isRedirect = false;
	
	if(cmd.equals("start")) {
		msg = "어서오세요!";
		nextpage = "login.jsp";
				
	} else if(cmd.equals("login")) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		User user = new User();
		user.setId(id);
		user.setPw(pw);
		
		ArrayList<User> list = getList(request);
		int idx = list.indexOf(user);
		nextpage = "login.jsp";
		
		if(idx != -1) {
			User savedUser = list.get(idx);
			
			if(savedUser.getPw().equals(pw)) {
				nextpage = "loginSuccess.jsp";
				msg = savedUser.getNick() + "님 반갑습니다.";
				session.setAttribute("loginUser", savedUser);
			} else {
				msg = "비밀번호가 일치하지 않습니다.";
			}
		} else {
			msg = "가입되지 않은 사용자 입니다.";
		}
		
	} else if(cmd.equals("goJoin")) {
		msg = "모든 항목은 필수 입력입니다.";
		nextpage = "join.jsp";
		
	} else if(cmd.equals("cancelJoin")) {
		msg = "가입이 취소되었습니다.";
		nextpage = "login.jsp";
		
	} else if(cmd.equals("doJoin")) {
		ArrayList<User> list = getList(request);
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		User user = new User(id, pw, nick);
		
		if(list.contains(user)) {
			msg = "이미 존재하는 아이디입니다.";
			nextpage = "join.jsp";
			request.setAttribute("user", user);
			
		} else {
			list.add(user);
			nextpage = "main.jsp?cmd=joinOk";
			isRedirect = true;
		}
		
	} else if(cmd.equals("joinOk")) {
		msg = "가입이 성공적으로 이루어졌습니다.";
		nextpage = "login.jsp";
		
	} else if(cmd.equals("goModify")) {
		msg = "패스워드와 닉네임 수정이 가능합니다.";
		nextpage = "modify.jsp";
		
	} else if(cmd.equals("logout")) {
		User user = (User)session.getAttribute("loginUser");
		msg = user.getNick() + "님 안녕히가세요.";
		nextpage = "login.jsp";
		session.invalidate();
		
	}  else if(cmd.equals("goWithdraw")) {
		msg = "이 동작은 취소할 수 없습니다.";
		nextpage = "withdraw.jsp";
		
		
	} else if(cmd.equals("accessDenied")) {
		msg = "유효하지 않은 접근입니다.";
		nextpage = "login.jsp";
		
	} else if(cmd.equals("cancelModify")) {
		msg = "개인정보수정이 취소되었습니다.";
		nextpage = "loginSuccess.jsp";
		
	} else if(cmd.equals("doModify")) {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		User user = (User)session.getAttribute("loginUser");
		user.setPw(pw);
		user.setNick(nick);
		
		ArrayList<User> list = getList(request);
		int idx = list.indexOf(user);
		list.set(idx, user);
		isRedirect = true;
		nextpage = "main.jsp?cmd=afterModify";
		
	} else if(cmd.equals("cancelWithdraw")) {
		msg = "탈퇴가 철회되었습니다.";
		nextpage = "loginSuccess.jsp";
		
	} else if(cmd.equals("doWithdraw")) {
		nextpage = "main.jsp?cmd=afterWithdraw";
		isRedirect = true;
		User user = (User)session.getAttribute("loginUser");
		ArrayList<User> list = getList(request);
		list.remove(user);
		session.invalidate();
		
	} else if(cmd.equals("afterWithdraw")) {
		msg = "이용해 주셔서 ㄱㅅ";
		nextpage = "login.jsp";
		
	} else if(cmd.equals("afterModify")) {
		msg = "개인정보가 업데이트 되었습니다.";
		nextpage = "loginSuccess.jsp";
	}
	
	if(isRedirect) {
		response.sendRedirect(nextpage);
	} else {
		request.setAttribute("msg", msg);
		request.getRequestDispatcher(nextpage).forward(request, response); // 그냥 forward
	}
%>