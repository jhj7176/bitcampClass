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
//서블릿 클래스
// 웹프로그래밍에서 클라이언트의 요청을 처리하고 그 결과를 다시 클라이언트에게 

//전송하는 Servlet 클래스의 구현 규칙을 지킨 자바 프로그래밍 기술
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)//클라>서버 요청  서버>클라 응담
	//doGet 메소드를 이용하면 get 방식으로 응답요청 받음
	//doPost 메소드를 이용하면 post 방식으로 응답요청 받음 >> 보안성이 높다. url을 디렉토리 뎁스랑 다르게 적어서 
	//실제 디렉토리 구조를 모르게 할 수 있다. 
	//서블릿 클래스를 이용하면 get 과 post를 선택해서 쓸 수 있다.
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
