package kr.ac.jipark09;

public class MyViewResolver {
	
	public static String getNextPage(String name) {
		return name + ".jsp"; // cmd.substring(1, cmd.lastIndexOf("."))
	}
	
}
