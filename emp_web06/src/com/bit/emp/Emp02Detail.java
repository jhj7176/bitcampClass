package com.bit.emp;


import java.sql.*;

import com.bit.emp.dto.Emp02Bean;

public class Emp02Detail {
	
	
	public Emp02Bean detail(int sabun){
		
		Emp02Bean bean = new Emp02Bean();
		String sql="{call emp02detail("+sabun+", ?)}";
		Connection conn = null;
		CallableStatement stmt = null;
		ResultSet rs = null;
		try {
			conn=Oracle.getConnection();
			stmt = conn.prepareCall(sql);
			
			stmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			stmt.execute();
			rs=(ResultSet) stmt.getObject(1);
			
			if(rs.next()){
				bean.setSabun(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setHiredate(rs.getDate(3));
				bean.setPay(rs.getInt(4));
			}//if
			
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
		
		return bean;
	}
	
//
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		
//		Emp02Detail me = new Emp02Detail();
//		Emp02Bean bean = me.detail(7777);
//
//	}

}
