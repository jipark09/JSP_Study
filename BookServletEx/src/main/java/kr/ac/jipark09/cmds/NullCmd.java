package kr.ac.jipark09.cmds;

import javax.servlet.http.HttpServletRequest;

public class NullCmd implements ICmd {

	@Override
	public void action(HttpServletRequest request) {
		// 아무것도 안하는 것을 나타내는 객체
	}
}
