package com.bit.step01;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex08 extends MyServlet2{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		// TODO Auto-generated method stub
		
		String id = req.getParameter("id");
		String msg = req.getParameter("msg");
		System.out.println(id+" call GET "+msg);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		String msg = req.getParameter("msg");
		System.out.println(id+" call POST "+msg);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse res) throws IOException {
		// TODO Auto-generated method stub
		ServletInputStream is = req.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
//		String msg = req.getParameter("msg");
		
		System.out.print("call PUT ");
		System.out.println(br.readLine());
		
		br.close();
		
		

	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse res) throws IOException {
		// TODO Auto-generated method stub
		
		ServletInputStream is = req.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
	//	String msg = req.getParameter("msg");
		
		System.out.print("call Delete ");
		System.out.println(br.readLine());
		
		br.close();
		
	}
	
}//ex08
