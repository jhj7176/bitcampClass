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
 * Servlet implementation class IndexController
 */
@WebServlet("/index.bit")
public class IndexController extends HttpServlet {



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
	}



}
