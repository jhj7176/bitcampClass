package com.bit.controler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.EmpDao;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/delete.bit")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		/*
		 * int sabun = Integer.parseInt(request.getParameter("idx"));
		 * 
		 * try { EmpDao dao = new EmpDao(); dao.deleteOne(sabun);
		 * 
		 * RequestDispatcher rd = request.getRequestDispatcher("list.bit");
		 * rd.forward(request, response);
		 * 
		 * } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 * 
		 */
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		int sabun = Integer.parseInt(request.getParameter("idx"));
		
		try {
			EmpDao dao = new EmpDao();
			dao.deleteOne(sabun);
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		response.sendRedirect("list.bit");
		
		
	}

}
