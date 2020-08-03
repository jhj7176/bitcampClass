package com.bit.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.bit.model.Emp03Dto;
 
public class EmpDao {

	Connection conn;
	java.util.logging.Logger log = Logger.getGlobal();

	public EmpDao() throws SQLException {
		// TODO Auto-generated constructor stub
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			// dao객체를 이용할때 커넥션 생성.
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public ArrayList<Emp03Dto> getList() {
		String sql = "select * from emp03 order by sabun";
		ArrayList<Emp03Dto> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Emp03Dto bean = new Emp03Dto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
				log.info(bean.toString());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} // finally
		return list;
	}// getList

	public void insertOne(int sabun, String name, String sub, int pay) {

		String sql = "insert into emp03 values ( " + sabun + ",'" + name + "' , '" + sub + "' ,sysdate , " + pay + " )";
		String sql2 = "insert into emp03 values ( ?,?,?,sysdate,?)";
		System.out.println(sql);

		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql2);

			pstmt.setInt(1, sabun);// sal injection attack 예방. 문자열 조작하지않고 문자열그대로 집어넣음.
			pstmt.setString(2, name);
			pstmt.setString(3, sub);
			pstmt.setInt(4, pay);

			pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}// insertOne

	public Emp03Dto selectOne(int sabun) throws SQLException {
		String sql = "select * from emp03 where sabun=?";
		Emp03Dto bean = new Emp03Dto();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);//보안성좋음. 속도좋음.
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				
			}//if
			log.info(bean.toString());
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

		return bean;
	}//selectOne

	public int updateOne(int sabun, String name, String sub, int pay) throws SQLException {
		String sql = "update emp03 set name=?, sub=?, pay=? where sabun =?";
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, sub);
			pstmt.setInt(3, pay);
			pstmt.setInt(4, sabun);
			result=pstmt.executeUpdate();
			log.info("update = "+(result>0));
		} finally {
			
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}
		
		
		
		return result;
	}
	
	public void deleteOne(int sabun) throws SQLException {
		
		String sql="delete from emp03 where sabun=?";
		
		PreparedStatement pstmt = null;
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.executeQuery();
		}finally {
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}
		
	}
	
}// classEnd
