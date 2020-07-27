package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05 extends GenericServlet {

	String method;
	
	private void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String msg = req.getParameter("msg");
		res.setContentType("text/html;charset=utf-8");
		PrintWriter out = res.getWriter();

	//	res.sendError(404);
	//	res.setStatus(res.SC_METHOD_NOT_ALLOWED);
	//	res.sendError(res.SC_METHOD_NOT_ALLOWED);
		
		out.print("<!DOCTYPE html>");
		out.print("<html lang=\"en\">");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\"></head>");
		out.print("<body>");
		out.print("<h1>Method : " + method + "</h1>");
		out.print("<h1>Messeage : " + msg + "</h1>");
		out.print("</form></body>");
		out.print("</html>");

	}

	private void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String msg = req.getParameter("msg");
		res.setContentType("text/html;charset=utf-8");
		PrintWriter out = res.getWriter();

		out.print("<!DOCTYPE html>");
		out.print("<html lang=\"en\">");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\"></head>");
		out.print("<body>");
		out.print("<h1>Method : " + method + "</h1>");
		out.print("<h1>Message : " + msg + "</h1>");
		out.print("</form></body>");
		out.print("</html>");

	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		javax.servlet.http.HttpServletRequest request = (HttpServletRequest) req;
		// web에서는 http객체를 사용함.
		javax.servlet.http.HttpServletResponse response = (HttpServletResponse) res;
		String method = request.getMethod();
		this.method = method;

		if ("POST".equals(method)) {
			doPost(request, response);

		} else if ("GET".equals(method)) {
			doGet(request, response);

		}

	}// service

}
