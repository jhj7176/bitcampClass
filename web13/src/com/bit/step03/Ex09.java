package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex09 extends HttpServlet {

	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Enumeration<String> enu = getInitParameterNames();
	
		while(enu.hasMoreElements()) {
			System.out.println(enu.nextElement());
		}
		String initValue=getInitParameter("msg3");
		System.out.println("servlet");
	PrintWriter out=resp.getWriter();
	
	out.print("<h1>HttpServlet --"+initValue+"</h1>");
	}
}
