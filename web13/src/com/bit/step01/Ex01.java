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
	 * �ϳ��� ��ü�� ���� ������. ���������� ��û�� ���Ӱ� ����ص� ���� ��ü�� ����.
	 * 
	 */
	ServletConfig config;
	@Override
	public void destroy() {//server shutdown�ɶ�
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
		return "�� ������ 2000727�� bitcamp��������";
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
