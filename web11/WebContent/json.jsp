{"students":[


<%String sql = "select * from student01";
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = MyOracle.getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				boolean begin = true;
				while (rs.next()) {
					if (begin) {
						out.println("{");
						begin = false;
					} else {
						out.println(",{");
					}
					out.println("\"num\":" + rs.getInt("num") + ",");
					out.println("\"name\":\"" + rs.getString("name") + "\",");
					out.println("\"kor\":" + rs.getInt("kor") + ",");
					out.println("\"eng\":" + rs.getInt("eng") + ",");
					out.println("\"math\":" + rs.getInt("math"));
					out.println("}");

				}
			} finally {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			}%>



]}
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="com.bit.util.MyOracle"%>
