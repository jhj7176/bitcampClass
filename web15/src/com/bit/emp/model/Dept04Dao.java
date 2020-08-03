package com.bit.emp.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Dept04Dao {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public Dept04Dao() throws SQLException {
		// TODO Auto-generated constructor stub

		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";

		try {
			Class.forName(driver);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn = DriverManager.getConnection(url, user, password);

	}

	public ArrayList<Dept04Dto> selectAll() throws SQLException {

		ArrayList<Dept04Dto> list = new ArrayList<Dept04Dto>();
		String sql = "select * from dept04";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Dept04Dto bean = new Dept04Dto(rs.getInt("deptno"), rs.getString("dname"), rs.getString("loc"));
				list.add(bean);
				// list.add(new Dept04Dto(rs.getInt("deptno"), rs.getString("dname"),
				// rs.getString("loc")));
				System.out.println(bean.toString());

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} // finally

		return list;
	}// selectAll

	public int insertOne(String dname, String loc) throws SQLException {
		String sql = "insert into dept04 values (dept04_seq.nextval,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dname);
			pstmt.setString(2, loc);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} // finally
		return 0;
	}// insertOne

	public int deleteOne(int deptno) throws SQLException {
		String sql = "delete from dept04 where deptno=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			return pstmt.executeUpdate();
			/*
			 * [executeUpdate()] either (1) the row count for SQL Data Manipulation Language
			 * (DML) statementsor (2) 0 for SQL statements that return nothing
			 * 
			 */

		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

	}// deleteOne

	public int maxDeptno() throws SQLException {
		String sql = "select max(deptno) as max from dept04";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next())
				return rs.getInt("max");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return 0;
	}// maxDeptno

	public int updateOne(int deptno, String dname, String loc) throws SQLException {

		String sql = "update dept04 set dname=?, loc=? where deptno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(3, deptno);
			pstmt.setString(1, dname);
			pstmt.setString(2, loc);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return 0;
	}// updateOne

	public Dept04Dto selectOne(int deptno) {
		String sql = "select * from dept04 where deptno=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			rs = pstmt.executeQuery();
			Dept04Dto bean = null;
			while (rs.next()) {
				// return new Dept04Dto(rs.getInt("deptno"), rs.getString("dname"),
				// rs.getString("loc"));
				bean = new Dept04Dto();
				bean.setDeptno(rs.getInt("deptno"));
				bean.setDname(rs.getString("dname"));
				bean.setLoc(rs.getString("loc"));
			}
			return bean;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}// selectOne

	public int rowCount() throws SQLException {
		String sql = "select count(*) as cnt from dept04";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next())
				return rs.getInt("cnt");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}//finally
		return 0;
	}// rowCount

}// ClassEnd
