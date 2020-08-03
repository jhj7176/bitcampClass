package com.bit.el.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ElController
 */
@WebServlet("/el/ex02.bit")
public class ElController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		JavaBean bean = new JavaBean();
		bean.setSu1(1234);
		bean.setSu2(3.14159);
		bean.setCh('@');
		bean.setName("abCD");
		bean.setTf(true);
		bean.setHiredate(new Date());
		

		request.setCharacterEncoding("utf-8");
	//	String msg2 = request.getParameter("msg2");
		//request.setAttribute("msg2", "request success");
		request.setAttribute("bean", bean);
		request.getRequestDispatcher("ex02.jsp").forward(request, response);
	
	}//doget
	public class JavaBean{
		
		private int su1;
		private double su2;
		private char ch;
		private String name;
		private Date hiredate;
		private boolean	tf;
		
		public JavaBean() {
			// TODO Auto-generated constructor stub
		}
		
		public int getSu1() {
			return su1;
		}
		
		public void setSu1(int su1) {
			this.su1 = su1;
		}
		
		public double getSu2() {
			return su2;
		}
		
		public void setSu2(double su2) {
			this.su2 = su2;
		}
		
		public char getCh() {
			return ch;
		}
		
		public void setCh(char ch) {
			this.ch = ch;
		}
		
		public String getName() {
			return name;
		}
		
		public void setName(String name) {
			this.name = name;
		}
		
		public Date getHiredate() {
			return hiredate;
		}
		
		public void setHiredate(Date hiredate) {
			this.hiredate = hiredate;
		}
		
		public boolean isTf() {
			return tf;
		}
		
		public void setTf(boolean tf) {
			this.tf = tf;
		}
		
		@Override
		public String toString() {
			return "JavaBean [su1=" + su1 + ", su2=" + su2 + ", ch=" + ch + ", name=" + name + ", hiredate=" + hiredate
					+ ", tf=" + tf + "]";
		}
		
		
		
	}

}

