package com.bit.emp;

import java.sql.*;


public class Emp02Insert {

	public Emp02Insert() {

	}

	public void insert(int sabun, String name, int pay) {
		
		String sql = "{call emp02insert(" + sabun + ", '" + name + "', " + pay + ")}"; // �ڹٿ��� ���ν��� ȣ��
		// {call ���ν�����}

		Connection conn=null;
		CallableStatement stmt = null;
		try{
		
		conn = Oracle.getConnection();
		stmt = conn.prepareCall(sql);
		stmt.execute();
		
		}catch(Exception e){
			
		}finally{
			try {
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}//finally
	}

	public static void main(String[] args) {
		Emp02Insert me = new Emp02Insert();
		me.insert(3965, "�����", 3900);
	}
}