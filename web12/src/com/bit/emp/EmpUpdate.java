package com.bit.emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpUpdate extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String param1 = req.getParameter("empno");
		String param2 = req.getParameter("ename");
		String param3 = req.getParameter("job");
		String param4 = req.getParameter("sal");
		String param5 = req.getParameter("comm");
		
		
		
	}//doPOst

}
