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
		//server에 context.xml에 resouce 엘리먼트 참고.
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
			Context context = (Context) init.lookup("java:/comp/env");//자바 /컴파일러/ 환경>> 컨텍스트를 받아옴
			javax.sql.DataSource datasource = null;//커넥션을 받을 타입. 
			datasource = (DataSource) context.lookup("jdbc/oracle");
			//컨텍스트에서 이름이 jdbc/oracle을 찾아서 받아온다. 이름이 복잡한건 중복을 피하기 위해서. 		
			conn=datasource.getConnection();	//커넥션풀에서 커넥션을 하나 받아온다. 
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
			//ms 대기시간. 커넥션풀에 커넥션이 없을때 반환되는 커넥션이 생길 때까지 대기시간.
			minIdle="10" 
			//첨에 풀에 최소 커넥션 10개 가지고 시작함. close하면 커넥션풀에 반환
		/>
 * */
	public List<Dept04Dto> selectAll() throws SQLException {
		List<Dept04Dto> list = new ArrayList<Dept04Dto>();	
		try {
			conn.setAutoCommit(false);
			//default가 true, 명시적으로 false로하면 transaction후 명시적으로 conn.commit()해야함
			pstmt = conn.prepareStatement("select * from dept04");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("deptno")+"부서번호");
			
				list.add(new Dept04Dto(
						rs.getInt("deptno"), 
						rs.getString("dname"), 
						rs.getString("loc")));
			} // while	
//			conn.commit(); connectionPool에서 AutoCommit을 false로 하면 명시적으로 commit을 해줘야한다.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			//sql exception이 생기면 
			conn.rollback(); //rolback을 통해서 commit전 시점으로 복귀한다.
			//throw sqlexception 하지 않으면 try-catch로 예외처리할 것.
			//close하기 rollback을 완료해야하며 모든 connection은 동일한 객체여야함.
		} finally {
			conn.setAutoCommit(true);//트랜잭션완료후 다시 돌려둔다. 다른 작업때 영향줄까봐
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();//close하면 자동으로 commit이 되므로 rollback이 안된다. 
		}
		
		return list;
	}// selectAll

	
	
	
	
}// Dept04Dto
