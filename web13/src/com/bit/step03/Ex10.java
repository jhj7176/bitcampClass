package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex10 extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		ServletContext  sct =getServletContext();
		Enumeration<String> en = sct.getInitParameterNames();
		String param ="";
		while(en.hasMoreElements()) {
			param +=" / "+ sct.getInitParameter(en.nextElement());
		}
		System.out.println(param);
		
		String initValue=getInitParameter("msg9");
		System.out.println("servlet");
	PrintWriter out=resp.getWriter();
	
	out.print("<h1>HttpServlet --"+initValue+"</h1>");
	}
	
	
}
