package com.bit.dept.model;

import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.sql.*;

public class Dept04Dao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

//	public Dept04Dao() {
//		try {
//			Class.forName("oracle:jdbc:OracleDriver");
//			conn = DriverManager.getConnection(
//					"jdbc:oracle:thin:@localhost:1521:xe",
//					"scott",
//					"tiger");
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch(ClassNotFoundException e2) {
//			e2.printStackTrace();
//		}
//		
//		
//	}

	public Dept04Dao() {
		// https://tomcat.apache.org/tomcat-7.0-doc/jdbc-pool.html#As_a_Resource
		//server�� context.xml�� resouce ������Ʈ ����.
		try {
			InitialContext init = new InitialContext();
			/*
			 * This class is the starting context for performing naming operations. 
				All naming operations are relative to a context.
				The initial context implements the Context interface
				and provides the starting point for resolution of names. 
				When the initial context is constructed, its environmentis 
				initialized with properties defined in the environment parameterpassed to the constructor, 
				and in any application resource files.

			 * 
			 * */
			Context context = (Context) init.lookup("java:/comp/env");//�ڹ� /�����Ϸ�/ ȯ��>> ���ؽ�Ʈ�� �޾ƿ�
			javax.sql.DataSource datasource = null;//Ŀ�ؼ��� ���� Ÿ��. 
			datasource = (DataSource) context.lookup("jdbc/oracle");
			//���ؽ�Ʈ���� �̸��� jdbc/oracle�� ã�Ƽ� �޾ƿ´�. �̸��� �����Ѱ� �ߺ��� ���ϱ� ���ؼ�. 		
			conn=datasource.getConnection();	//Ŀ�ؼ�Ǯ���� Ŀ�ؼ��� �ϳ� �޾ƿ´�. 
			System.out.println(conn);
	
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//catch

	}// constructor
/*<Resource 
			auth="Container" 
			name="jdbc/oracle" 
			type="javax.sql.DataSource" 
			driverClassName="oracle.jdbc.OracleDriver" 
			url="jdbc:oracle:thin:@localhost:1521:xe" 
			username="scott"
			password="tiger" 
			maxActive="50" 
			maxIdle="100" 
			maxWait="10000" 
			//ms ���ð�. Ŀ�ؼ�Ǯ�� Ŀ�ؼ��� ������ ��ȯ�Ǵ� Ŀ�ؼ��� ���� ������ ���ð�.
			minIdle="10" 
			//÷�� Ǯ�� �ּ� Ŀ�ؼ� 10�� ������ ������. close�ϸ� Ŀ�ؼ�Ǯ�� ��ȯ
		/>
 * */
	public List<Dept04Dto> selectAll() throws SQLException {
		List<Dept04Dto> list = new ArrayList<Dept04Dto>();	
		try {
			conn.setAutoCommit(false);
			//default�� true, ��������� false���ϸ� transaction�� ��������� conn.commit()�ؾ���
			pstmt = conn.prepareStatement("select * from dept04");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("deptno")+"�μ���ȣ");
			
				list.add(new Dept04Dto(
						rs.getInt("deptno"), 
						rs.getString("dname"), 
						rs.getString("loc")));
			} // while	
//			conn.commit(); connectionPool���� AutoCommit�� false�� �ϸ� ��������� commit�� ������Ѵ�.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			//sql exception�� ����� 
			conn.rollback(); //rolback�� ���ؼ� commit�� �������� �����Ѵ�.
			//throw sqlexception ���� ������ try-catch�� ����ó���� ��.
			//close�ϱ� rollback�� �Ϸ��ؾ��ϸ� ��� connection�� ������ ��ü������.
		} finally {
			conn.setAutoCommit(true);//Ʈ����ǿϷ��� �ٽ� �����д�. �ٸ� �۾��� �����ٱ��
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();//close�ϸ� �ڵ����� commit�� �ǹǷ� rollback�� �ȵȴ�. 
		}
		
		return list;
	}// selectAll

	
	
	
	
}// Dept04Dto
