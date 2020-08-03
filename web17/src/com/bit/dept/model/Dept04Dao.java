package com.bit.dept.model;

import java.util.ArrayList;
import java.util.List;

public class Dept04Dao {

	public List<Dept04Dto> selectAll() {
		List<Dept04Dto> list = new ArrayList<Dept04Dto>();

		list.add(new Dept04Dto(10, "테스트", "비트캠프"));
		list.add(new Dept04Dto(20, "테스트", "비트캠프"));

		return list;
	}// selectAll

}// Dept04Dto
