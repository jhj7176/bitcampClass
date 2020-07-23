package com.bit.emp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bit.model.MyOracle;

public class EmpDao {

	
	public List<EmpVO> getList(){
		
		List<EmpVO> list = new ArrayList<EmpVO>();
		String sql="select * from emp";
		
		try {
			Connection conn = MyOracle.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				EmpVO bean = new EmpVO();
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setJob(rs.getString("job"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setMgr(rs.getInt("mgr"));
				bean.setComm(rs.getInt("comm"));
				bean.setDeptno(rs.getInt("deptno"));
				list.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return list;
	}
	
	
	
}
