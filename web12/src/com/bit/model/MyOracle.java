package com.bit.model;

import java.sql.*;

	public class MyOracle {

		private static Connection conn;
		private static String driver = "oracle.jdbc.driver.OracleDriver";
		private static String url = "jdbc:oracle:thin:@localhost:1521:xe";
		private static String user = "scott";
		private static String password = "tiger";

		private MyOracle() {
		}

		public static Connection getConnection() throws SQLException {

			if (conn == null || conn.isClosed()) {

				try {
					Class.forName(driver);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				conn = DriverManager.getConnection(url, user, password);
			}//if

			return conn;
		}//getConnection

	}
	

