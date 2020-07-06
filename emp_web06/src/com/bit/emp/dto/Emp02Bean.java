package com.bit.emp.dto;

import java.sql.Date;

public class Emp02Bean {
//Encapsulation 정보은닉. JAVA BEAN
	private int sabun, pay; 
	private String name;
	private Date hiredate;
	
	//get set 메소드를 전부 만들지않고 필요한 기능만 제공하여 제약할 수 있다. 
	public int getSabun() {
		return sabun;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	
	
}//Emp02BeanClass
