package com.bit.dept.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp04.model.Emp04Dao;
import com.bit.emp04.model.Emp04Dto;

/**
 * Servlet implementation class DetailController
 */
@WebServlet("/detail.bit")
public class DetailController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int sabun = Integer.parseInt(request.getParameter("idx"));

		HttpSession session = request.getSession();
		Object obj = session.getAttribute("login");
		if (obj != null) {
			Emp04Dto bean = new Emp04Dto();
			if (bean.getLvl() > 1) {//레벨이 2이상인 사람만 상세정보 열람 가능.
				request.getRequestDispatcher("detail.jsp").forward(request, response);
			} else {
				//레벨이 낮아서 에러페이지로 이동
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}//else
		} else {
			response.sendRedirect("login.bit");//널이면 로그인하라고 로그인페이지로감
		}//else
	}//doget
//validation하듯이 위에서부터 차례대로
	//null이면 return
	//레벨이 낮으면 return
	//검증을 다마쳐서 권한을 만족하면
	//dao.selectOne 을 작업.
	//다른 작업도 마찬가지.
	//권한이 부족하면 err페이지로 이동시키거나
	//에러메세지 띄우기. 
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
