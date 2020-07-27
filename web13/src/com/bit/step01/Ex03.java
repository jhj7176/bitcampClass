package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex03 extends MyServlet{

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		out.print("<h1>Extends MyServlet</h1>");
		
		
	}//service
	
	
}
