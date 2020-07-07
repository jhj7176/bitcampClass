package com.bit.emp;

import java.sql.*;

public class Oracle {//��Ŭ�� ����

	private static Connection conn=null;

	
	private Oracle(){
		//��ü����������. static�̶� ��ü������ �ʿ䰡 ����. 
	}
	
	
	public static Connection getConnection() {

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		String driver = "oracle.jdbc.driver.OracleDriver";
		try {
			if (conn == null || conn.isClosed()) {
				// Ŭ���̾�Ʈ���� ��û�� ���� �� conn�� null�̰ų� closed�� ���� ��������

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
		// db connection ����
		System.out.println(Oracle.getConnection() != null);

	}// main

}// oracleClassend