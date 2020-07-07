package com.bit.emp;

import java.util.ArrayList;
import java.sql.*;

public class EmpSQL {

	public static ArrayList<EmpDto> list() {

		ArrayList<EmpDto> list = new ArrayList<>();
		String sql = "select * from emp02";

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = com.bit.util.MyOracle.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				EmpDto bean = new EmpDto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}// while

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}//finally

		return list;

	}// list

}// EmpSQL
