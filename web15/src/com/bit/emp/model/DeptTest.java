package com.bit.emp.model;

import java.sql.SQLException;
import java.util.ArrayList;

public class DeptTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			Dept04Dao dao = new Dept04Dao();
			System.out.println("Connection = " + (dao.conn != null));
			ArrayList<Dept04Dto> list = dao.selectAll();

			 for (Dept04Dto bean : list) {
			 System.out.println(bean);
			 }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			dao = new Dept04Dao();
			int result = dao.insertOne("test1", "test1");
			System.out.println("list size 예상치  5 결과 " + (list.size()));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			dao = new Dept04Dao();
			int max = dao.maxDeptno();

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			dao = new Dept04Dao();
			result = dao.updateOne(max, "testtest", "bitcamp");
			System.out.println(result>0);
			System.out.println("update"+result);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			dao = new Dept04Dao();
			Dept04Dto target = dao.selectOne(max);
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

			dao = new Dept04Dao();
			Dept04Dto dto = dao.selectOne(max);
			System.out.println("수정전"+target);
			System.out.println("수정후"+dto);
			System.out.println("equals "+dto.equals(target));
			
			
			dao = new Dept04Dao();
			int cnt = dao.rowCount();
			System.out.println("rowCount "+cnt);
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			dao = new Dept04Dao();
			//int result1 = dao.deleteOne(max);
			//System.out.println(result1 > 0);
			//System.out.println("delete"+result1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// main

}// classs
