package com.bit.web07;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02 extends HttpServlet{
//������ Ŭ����
// �����α׷��ֿ��� Ŭ���̾�Ʈ�� ��û�� ó���ϰ� �� ����� �ٽ� Ŭ���̾�Ʈ���� 

//�����ϴ� Servlet Ŭ������ ���� ��Ģ�� ��Ų �ڹ� ���α׷��� ���
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)//Ŭ��>���� ��û  ����>Ŭ�� ����
	//doGet �޼ҵ带 �̿��ϸ� get ������� �����û ����
	//doPost �޼ҵ带 �̿��ϸ� post ������� �����û ���� >> ���ȼ��� ����. url�� ���丮 ������ �ٸ��� ��� 
	//���� ���丮 ������ �𸣰� �� �� �ִ�. 
	//������ Ŭ������ �̿��ϸ� get �� post�� �����ؼ� �� �� �ִ�.
			throws ServletException, IOException {
			
			String msg1 ="<html><head><meta charset = \"EUC-KR\"></head><body><h1>ex02 test</h1><h2><a href=\"/web07/ex01.jsp\">ex01</a></h2></body></html>";
			String msg = req.getParameter("msg");
			PrintWriter out = resp.getWriter();
			out.println(msg1);
			
			out.print("<html>");
			out.print("<head>");
			out.print("<meta charset = \"EUC-KR\">");
			out.print("</head>");
			out.print("<body>");
			out.print("<h1>ex02 page</h1>");
			out.print("<h2> msg = "+msg+"</h2>");
			for (int j = 0; j < 5; j++) {
				out.print("<p> print "+j+"</p>");
				
			}
			out.print("</body>");
			out.print("</html>");
			out.flush();
			out.close();
			
			
			
			
	}
	

}