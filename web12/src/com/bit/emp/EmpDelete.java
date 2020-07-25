package com.bit.emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpDelete extends HttpServlet {

	
	Logger log = Logger.getGlobal();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		String param = req.getParameter("idx");
		int empno = Integer.parseInt(param);
		
		com.bit.emp.EmpDao dao = new com.bit.emp.EmpDao();
		try {
			dao.deleteOne(empno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		log.config(param);
		
		out.close();
		
	}//doPost
		
	
}
