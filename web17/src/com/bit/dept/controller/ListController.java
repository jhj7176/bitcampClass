package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept.model.Dept04Dao;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/index.bit")
public class ListController extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListController() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub

    	Dept04Dao dao = null;
    	try {
    		dao = new Dept04Dao();
			req.setAttribute("list", dao.selectAll());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	req.getRequestDispatcher("/index.jsp").forward(req, resp);
    	
    	
    }


}
