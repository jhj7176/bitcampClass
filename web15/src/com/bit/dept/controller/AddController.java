package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.emp.model.Dept04Dao;

import sun.security.util.Debug;

/**
 * Servlet implementation class AddController
 */
@WebServlet("/dept/add.bit")
public class AddController extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	req.getRequestDispatcher("/addDept.jsp").forward(req, resp);
    
    }
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String dname=	request.getParameter("dname").trim();
		String loc=request.getParameter("loc").trim();
		
		try {
			Dept04Dao dao = new Dept04Dao();
			dao.insertOne(dname, loc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("./list.bit");
		
		
	}

}
