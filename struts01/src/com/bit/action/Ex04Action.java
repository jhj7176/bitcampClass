package com.bit.action;

import com.opensymphony.xwork2.Action;

public class Ex04Action implements Action {
	
//	Action �������̽����� �⺻������ ������ �ִ� �����.
//	  public static final java.lang.String SUCCESS = "success";
//	  
//	  public static final java.lang.String NONE = "none";
//	  
//	  public static final java.lang.String ERROR = "error";
//	  
//	  public static final java.lang.String INPUT = "input";
//	  
//	  public static final java.lang.String LOGIN = "login";
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("New Package Ex04 Action...");
		return Action.SUCCESS;
	}

}
