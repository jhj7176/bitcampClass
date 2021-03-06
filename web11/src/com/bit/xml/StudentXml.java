package com.bit.xml;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bit.util.MyOracle;

public class StudentXml extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("application/xml;charset=utf-8");//response header로 content type을 지정
		resp.setCharacterEncoding("utf-8");//charset은 두가지다 지정해주는 것이 좋다.
		
		PrintWriter out = resp.getWriter();
		out.println("<students>");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from student01";
		try {
			conn = MyOracle.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				out.println("<student>");
				out.println("	<num>" + rs.getInt("num") + "</num>");
				out.println("	<name>" + rs.getString("name") + "</name>");
				out.println("	<kor>" + rs.getInt("kor") + "</kor>");
				out.println("	<eng>" + rs.getInt("eng") + "</eng>");
				out.println("	<math>" + rs.getInt("math") + "</math>");
				out.println("</student>");

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

		out.println("</students>");

	}// dopostEnd

}// ClassEnd
