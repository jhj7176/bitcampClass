package com.bit.emp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.emp.dto.Emp02Bean;

public class Emp02List {

	public ArrayList<Emp02Bean> list() {
		ArrayList<Emp02Bean> list = new ArrayList<>();
		String sql = "{call emp02list(? ,?)}";
		//out파라미터 개수에 따라 물음표 수가 달라진다. 
		Connection conn = null;
		CallableStatement stmt = null;
		ResultSet rs = null;
		try {

			conn = Oracle.getConnection();
			stmt = conn.prepareCall(sql);
			// list에서 out파라미터 cursor가 나온다. 1개이므로 첫번째 인덱스번호.

			stmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			stmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			//인덱스번호에 따라 테이블이 달라진다. 보통 레퍼런스받으니까 
			//인덱스번호랑 테이블이랑 알고 하게됨. 

			/*
			 * parameterIndex - the first parameter is 1, the second is 2,and so
			 * onsqlType - the JDBC type code defined by java.sql.Types.If the
			 * parameter is of JDBC type NUMERICor DECIMAL, the version of
			 * registerOutParameter that accepts a scale valueshould be used.
			 */

			stmt.execute();
			rs = (ResultSet) stmt.getObject(1);
			//rs = (ResultSet) stmt.getObject(2);
			while (rs.next()) {
				//for (int i = 1; i < 4; i++) {
					//System.out.print(rs.getString(i) + ", ");
					//결과값을 자료구조에 담아서 웹으로 전달해야함
					Emp02Bean bean = new Emp02Bean();
					bean.setSabun(rs.getInt(1));
					bean.setName(rs.getString(2));
					bean.setHiredate(rs.getDate(3));
					bean.setPay(rs.getInt(4));
				list.add(bean); //bean객체에 사원정보 입력후 리스트에 빈객체를 담는다.
				//}
	
			}// while

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}// finally
		
		return list;
	}// list

//	public static void main(String[] args) { ///메인함수는 체크용
//
//		Emp02List me = new Emp02List();
//		ArrayList<Emp02Bean> list = me.list();
//	
//		for (int i = 0; i < list.size(); i++) {
//			Emp02Bean bean = list.get(i);
//			System.out.println(bean.getName());
//		}
//	
//	
//	}
}
