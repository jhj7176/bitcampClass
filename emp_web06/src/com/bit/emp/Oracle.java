package com.bit.emp;

import java.sql.*;

public class Oracle {//싱클톤 패턴

	private static Connection conn=null;

	
	private Oracle(){
		//객체생성방지함. static이라 객체생성할 필요가 없다. 
	}
	
	
	public static Connection getConnection() {

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		String driver = "oracle.jdbc.driver.OracleDriver";
		try {
			if (conn == null || conn.isClosed()) {
				// 클라이언트에서 요청이 왔을 때 conn이 null이거나 closed면 새로 생성해줌

				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);

			}// ifENd
		} catch (Exception e) {
			e.printStackTrace();
		}// catchEnd

		return conn;
	}// getConnectionENd

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// db connection 생성
		System.out.println(Oracle.getConnection() != null);

	}// main

}// oracleClassend
