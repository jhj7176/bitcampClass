package com.bit.dept.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/upload.bit")
public class UploadController extends HttpServlet {

	public UploadController() {
		super();
	}

//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//		// C:\WebWorkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\web17\
//		// += .\ upFile
//		String path = req.getRealPath("./upFile");
//		System.out.println(path);
//		req.getRequestDispatcher("upload.jsp").forward(req, resp);
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getRealPath("upFile");
		//""+System.currentTimeMillis()
		//생성자 파라미터 (request, Directory, int maxPostSize)
		//생성자 파라미터 (request, Directory, int maxPostSize, File rename)
		//생성자 파라미터 (request, Directory, int maxPostSize, encoding , File rename)
		
		int fsize = 1*1024*1024*1024;
				//1byte 1kb 1mb 1gb
	
		request.setCharacterEncoding("utf-8");
		//String rename=""+System.currentTimeMillis();
		DefaultFileRenamePolicy frp = new DefaultFileRenamePolicy();//파일명이 같으면 rename해준다.	
		MultipartRequest mpReq = new MultipartRequest(request, path, fsize, "utf-8" ,frp);// 업로드하는 파일 받는 객체	
													//서블릿 요청, 경로, 파일크기, 엔코딩 설정, rename객체
		System.out.println(request.getParameter("sabun"));
		System.out.println(mpReq.getParameter("sabun"));
		System.out.println("Rename"+mpReq.getFilesystemName("file1"));
		//form tag 내의 file type input의 name
		System.out.println("원래이름"+mpReq.getOriginalFileName("file1"));
		
		request.setAttribute("rename",mpReq.getFilesystemName("file1"));
		request.setAttribute("origin",mpReq.getOriginalFileName("file1"));
		//Returns the original filesystem name of the specified file 
		//(before any renaming policy was applied), or null if the file was not included in the upload.
	
		request.getRequestDispatcher("download.jsp").forward(request, response);
	
	}

}







