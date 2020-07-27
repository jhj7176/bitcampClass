package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex04 extends GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = res.getWriter();
		res.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		out.print("<!DOCTYPE html>");
		out.print("<html lang=\"en\">");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\"></head>");
		out.print("<body>");
		out.print("<h1>extends generic servlet</h1>");
		out.print("<form method=\"get\" action=\"ex06\">");
		out.print("<input type=\"text\" name=\"msg\">");
		out.print("<button>submit</button>");
		out.print("</form></body>");
		out.print("</html>");
	}

}
