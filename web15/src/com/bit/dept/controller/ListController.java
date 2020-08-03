package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.emp.model.Dept04Dao;
import com.bit.emp.model.Dept04Dto;

/**
 * Servlet implementation class listController
 */
@WebServlet("/dept/list.bit")
public class ListController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		try {
			Dept04Dao dao = new Dept04Dao();
			ArrayList<Dept04Dto> list = dao.selectAll();
			request.setAttribute("list", list);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("../list.jsp").forward(request, response);
		

	}// doGet

}
