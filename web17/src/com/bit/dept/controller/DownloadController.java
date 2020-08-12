package com.bit.dept.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download.bit")
public class DownloadController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String filename = request.getParameter("file");
		String origin = request.getParameter("org");
		String path = request.getRealPath("upFile");

		java.io.File file = new java.io.File(path+"\\"+filename);
		System.out.println(file.exists());
		
		
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition","attachment; filename="+origin);
		//�ٿ�ε������ ���� ���ϸ����� �޴´�. 
		OutputStream out = response.getOutputStream();
		
		if(file.exists()) {
			
			FileInputStream fis = new FileInputStream(file);
			int cnt = -1;
			while((cnt = fis.read())!=-1){
				out.write(cnt);
				//-1�̸� ���̻� ���� ������ ����. �ٿ�Ϸ�.	
			}//while
			out.flush();
//			out.close();
		}//if
	}//doget

}//class
