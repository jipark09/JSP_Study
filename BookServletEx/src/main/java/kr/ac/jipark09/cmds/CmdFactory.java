package kr.ac.jipark09.cmds;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

// handlerMapping
public class CmdFactory {
	private static HashMap<String, ICmd> cmds = new HashMap<String, ICmd>();
	
	public static void init() {
		cmds.put("/list.book", new ListCmd());
		cmds.put("/doAdd.book", new DoAddCmd());
		cmds.put("/view.book", new ViewCmd());
		cmds.put("/modify.book", new ModifyCmd());
		cmds.put("/delete.book", new DeleteCmd());
		cmds.put("/null", new NullCmd());
	}
	
	public static void doAction(HttpServletRequest request, String cmd) {
		if(!cmds.containsKey(cmd)) {
			cmd = "/null";
		}
		cmds.get(cmd).action(request);
	}
}
