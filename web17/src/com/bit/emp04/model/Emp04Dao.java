package com.bit.emp04.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.activation.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class Emp04Dao {

	javax.sql.DataSource dataSource;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public Emp04Dao() {
		// TODO Auto-generated constructor stub

		try {
			InitialContext init = new InitialContext();
			Context context = (Context) init.lookup("java:/comp/env");
			dataSource = (javax.sql.DataSource) context.lookup("jdbc/oracle");;
			
		} catch (NamingException e) {
			e.printStackTrace();
		}

	}

	public Emp04Dto login(int sabun, String name) {

		String sql = "select * from emp04 where sabun=? and name=?";
		Emp04Dto bean = new Emp04Dto();
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setLvl(rs.getInt("lvl"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bean;
	}// login

}
