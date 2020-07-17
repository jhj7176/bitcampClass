package com.bit.emp;

import java.sql.*;

public class Emp02Update {

	public int update(int sabun, String name, int pay){
		String sql = "{call emp02update(?, "+sabun+",'"+name+"',"+pay+")}";
		
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
			
		}//finally
		
		return result;
	}
		
		

//	public static void main(String[] args) {
//		Emp02Update me = new Emp02Update();
//		me.update(1115, "�Ӱ���", 5500);
//		
//	}
	
}