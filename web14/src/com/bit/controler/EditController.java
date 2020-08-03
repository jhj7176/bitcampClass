package com.bit.controler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Emp03Dto;
import com.bit.model.EmpDao;

/**
 * Servlet implementation class EditController
 */
@WebServlet("/edit.bit")
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int sabun = Integer.parseInt(request.getParameter("idx"));
		
		try {
			EmpDao dao = new EmpDao();
			Emp03Dto bean = dao.selectOne(sabun);
			request.setAttribute("dto", bean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");		
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		int sabun = Integer.parseInt(request.getParameter("sabun").trim());
		String name = request.getParameter("name").trim();
		String sub = request.getParameter("sub").trim();
		int pay = Integer.parseInt(request.getParameter("pay").trim());
		
		try {
			EmpDao dao = new EmpDao();
			dao.updateOne(sabun, name, sub, pay);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("detail.bit?idx="+sabun);
		
	}

}
