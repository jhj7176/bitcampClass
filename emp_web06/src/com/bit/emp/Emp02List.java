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
		//out�Ķ���� ������ ���� ����ǥ ���� �޶�����. 
		Connection conn = null;
		CallableStatement stmt = null;
		ResultSet rs = null;
		try {

			conn = Oracle.getConnection();
			stmt = conn.prepareCall(sql);
			// list���� out�Ķ���� cursor�� ���´�. 1���̹Ƿ� ù��° �ε�����ȣ.

			stmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			stmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			//�ε�����ȣ�� ���� ���̺��� �޶�����. ���� ���۷��������ϱ� 
			//�ε�����ȣ�� ���̺��̶� �˰� �ϰԵ�. 

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
					//������� �ڷᱸ���� ��Ƽ� ������ �����ؾ���
					Emp02Bean bean = new Emp02Bean();
					bean.setSabun(rs.getInt(1));
					bean.setName(rs.getString(2));
					bean.setHiredate(rs.getDate(3));
					bean.setPay(rs.getInt(4));
				list.add(bean); //bean��ü�� ������� �Է��� ����Ʈ�� ��ü�� ��´�.
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

//	public static void main(String[] args) { ///�����Լ��� üũ��
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