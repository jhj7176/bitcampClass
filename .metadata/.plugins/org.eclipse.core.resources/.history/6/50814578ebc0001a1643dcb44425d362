package com.bit.emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Delete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			
			req.setCharacterEncoding("EUC-KR");
			
			String param1 = req.getParameter("sabun");
			int sabun = Integer.parseInt(param1.trim());
			
			com.bit.emp.EmpSQL.delete(sabun);
			resp.sendRedirect("list.jsp");
			
		
	}
	
	
}
