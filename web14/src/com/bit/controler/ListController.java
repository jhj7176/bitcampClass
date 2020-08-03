package com.bit.controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Emp03Dto;
import com.bit.model.EmpDao;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/list.bit")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		//model
		EmpDao dao;
		PrintWriter out = response.getWriter();
		try {
			dao = new EmpDao();
			ArrayList<Emp03Dto> list = dao.getList();
			request.setAttribute("alist", list);
		
		
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//view
		RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
		rd.forward(request, response);
		
		
	}//ddGet

}
