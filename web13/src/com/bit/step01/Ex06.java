package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex06 extends MyServlet2{

	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		req.setCharacterEncoding("utf-8");
		String msg = req.getParameter("msg");
		res.setContentType("text/html;charset=utf-8");
		PrintWriter out = res.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html lang=\"en\">");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\"></head>");
		out.print("<body>");
		out.print("<h1>Method : " + req.getMethod() + "</h1>");
		out.print("<h1>Messeage : " + msg + "</h1>");
		out.print("</form></body>");
		out.print("</html>");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		// TODO Auto-generated method stub
		super.doGet(req, res);
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	
	}
	
}//classEnd
