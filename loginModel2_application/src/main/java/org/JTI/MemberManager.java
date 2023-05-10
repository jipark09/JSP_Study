package org.JTI;

import java.util.ArrayList;

import javax.servlet.ServletContext;

public class MemberManager {
	
	public static Member getBlankMember() {
		Member member = new Member();
		member.setId("");
		member.setPw("");
		member.setName("");
		member.setNick("");
		
		return member;
	}
	
	public static ArrayList<Member> getMemberList(ServletContext application) {
		ArrayList<Member> memberList = (ArrayList<Member>)application.getAttribute("memberList");
		
		if(memberList == null) {
			memberList = new ArrayList<>();
			application.setAttribute("memberList", memberList);
		}
		return memberList;
	}
	
	public static Member findMember(ServletContext application, String id) {
		ArrayList<Member> memberList = getMemberList(application);
		Member member = null;
		int idx = memberList.lastIndexOf(new Member(id));
		
		if(idx != -1) {
			member = memberList.get(idx);
		}
		return member;
	}
	
	public static boolean addMember(ServletContext application, Member member) {
		ArrayList<Member> memberList = getMemberList(application);
		boolean flag = false;
		
		if(findMember(application, member.getId()) == null) {
			memberList.add(member);
			flag = true;
		}
		return flag;
	}
	
	public static boolean deleteMember(ServletContext application, String id) {
		ArrayList<Member> memberList = getMemberList(application);
		return memberList.remove(findMember(application, id));
	}
	
	public static boolean updateMember(ServletContext application, Member member) {
		ArrayList<Member> memberList = getMemberList(application);
		int idx = memberList.indexOf(member);
		boolean flag = false;
		
		if(idx != -1) {
			memberList.set(idx, member);
			flag = true;
		}
		return flag;
	}

}
