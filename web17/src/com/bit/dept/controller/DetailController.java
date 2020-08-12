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
			if (bean.getLvl() > 1) {//������ 2�̻��� ����� ������ ���� ����.
				request.getRequestDispatcher("detail.jsp").forward(request, response);
			} else {
				//������ ���Ƽ� ������������ �̵�
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}//else
		} else {
			response.sendRedirect("login.bit");//���̸� �α����϶�� �α����������ΰ�
		}//else
	}//doget
//validation�ϵ��� ���������� ���ʴ��
	//null�̸� return
	//������ ������ return
	//������ �ٸ��ļ� ������ �����ϸ�
	//dao.selectOne �� �۾�.
	//�ٸ� �۾��� ��������.
	//������ �����ϸ� err�������� �̵���Ű�ų�
	//�����޼��� ����. 
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
