package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex01 implements Servlet {
	/*
	 * init--1910007751 
	 * service---1910007751 
	 * destroy---1910007751
	 * 
	 * 하나의 객체를 만들어서 서비스함. 브라우저에서 요청을 새롭게 계속해도 같은 객체로 받음.
	 * 
	 */
	ServletConfig config;
	@Override
	public void destroy() {//server shutdown될때
		// TODO Auto-generated method stub
		System.out.println("destroy---"+this.hashCode());
		//
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		System.out.println("config---");
		return this.config;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		System.out.println("getServletInfo");
		return "이 서블릿은 2000727에 bitcamp에서만듦";
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init"+this.hashCode());
		this.config = config;
	}

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service---"+this.hashCode());
		PrintWriter out = resp.getWriter();
		out.print("<h1>servlet</h1>");
	}

}
