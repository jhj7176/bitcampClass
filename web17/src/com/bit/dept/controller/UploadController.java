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
		//������ �Ķ���� (request, Directory, int maxPostSize)
		//������ �Ķ���� (request, Directory, int maxPostSize, File rename)
		//������ �Ķ���� (request, Directory, int maxPostSize, encoding , File rename)
		
		int fsize = 1*1024*1024*1024;
				//1byte 1kb 1mb 1gb
	
		request.setCharacterEncoding("utf-8");
		//String rename=""+System.currentTimeMillis();
		DefaultFileRenamePolicy frp = new DefaultFileRenamePolicy();//���ϸ��� ������ rename���ش�.	
		MultipartRequest mpReq = new MultipartRequest(request, path, fsize, "utf-8" ,frp);// ���ε��ϴ� ���� �޴� ��ü	
													//���� ��û, ���, ����ũ��, ���ڵ� ����, rename��ü
		System.out.println(request.getParameter("sabun"));
		System.out.println(mpReq.getParameter("sabun"));
		System.out.println("Rename"+mpReq.getFilesystemName("file1"));
		//form tag ���� file type input�� name
		System.out.println("�����̸�"+mpReq.getOriginalFileName("file1"));
		
		request.setAttribute("rename",mpReq.getFilesystemName("file1"));
		request.setAttribute("origin",mpReq.getOriginalFileName("file1"));
		//Returns the original filesystem name of the specified file 
		//(before any renaming policy was applied), or null if the file was not included in the upload.
	
		request.getRequestDispatcher("download.jsp").forward(request, response);
	
	}

}







