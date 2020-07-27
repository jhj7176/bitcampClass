package com.bit.step01;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public abstract class MyServlet implements Servlet{
	//추상메서드로 만들어서 서비스는 반드시 하게끔만듦. 반드시 오버라이딩필요

	@Override
	public void destroy() {
	}

	@Override
	public ServletConfig getServletConfig() {
		return null;
	}

	@Override
	public String getServletInfo() {
		return null;
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		
	}

	@Override
	public abstract void service(ServletRequest req, ServletResponse res) throws ServletException, IOException;

}
