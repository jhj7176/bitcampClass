package com.bit.emp;

import java.sql.*;

public class Emp02Delete {

	public void delete(int sabun){
		String sql = "{call emp02delete(?, "+sabun+")}";
		
		Connection conn = null;
		CallableStatement stmt = null;
		
		int result = 0;
		try {
			conn = Oracle.getConnection();
			stmt=conn.prepareCall(sql);
			stmt.registerOutParameter(1, oracle.jdbc.OracleTypes.INTEGER);
			stmt.execute();
			result = stmt.getInt(1);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}

	public static void main(String[] args) {
		Emp02Delete me = new Emp02Delete();
		me.delete(7777);
	}
	
}
