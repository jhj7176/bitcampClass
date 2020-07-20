package com.bit.json;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.util.MyOracle;

public class StudentJson extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		out.println("{\"students\":[");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from student01";
		try {
			conn = MyOracle.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			boolean begin = true;
			while (rs.next()) {
				
				if (rs.isFirst()) {//is.first resultset첫번째 row이면 true
					out.println("{");
					begin = false;//boolean 변수를 만들어서 isFirst처럼 쓸 수 있다.
				} else {
					out.println(",{");
				}
				out.println("\"num\":" + rs.getInt("num") + ",");
				out.println("\"name\":\"" + rs.getString("name") + "\",");
				out.println("\"kor\":" + rs.getInt("kor") + ",");
				out.println("\"eng\":" + rs.getInt("eng") + ",");
				out.println("\"math\":" + rs.getInt("math"));
				out.println("}");
			}//while

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//catch
		}//finally
		
		out.println("]}");
	}//doGet
}//classEnd
