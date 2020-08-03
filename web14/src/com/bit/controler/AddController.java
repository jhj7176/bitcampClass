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

@WebServlet("/add.bit")
public class AddController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");

		RequestDispatcher rd = req.getRequestDispatcher("add.jsp");
		rd.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		int sabun = 0;
		int pay = 0;

		try {
			sabun = Integer.parseInt(req.getParameter("sabun").trim());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("err", "사번은 숫자로 입력하세요");

			doGet(req, resp);
			return;

		}finally {
			
		}
		String name = req.getParameter("name").trim();
		String sub = req.getParameter("sub").trim();
		
		try {
			pay = Integer.parseInt(req.getParameter("pay").trim());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("err","사번은 숫자로 입력하세요");
			doGet(req, resp);

			return;
		}

		try {
			EmpDao dao = new EmpDao();
			dao.insertOne(sabun, name, sub, pay);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("list.bit");

	}

}
