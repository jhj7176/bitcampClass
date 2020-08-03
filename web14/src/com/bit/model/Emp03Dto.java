package com.bit.model;

import java.sql.Date;

public class Emp03Dto {
	private String name, sub;
	private int sabun, pay;
	private Date nalja;
	
	
	
	@Override
	public String toString() {
		return "Emp03Dto [name=" + name + ", sub=" + sub + ", sabun=" + sabun + ", pay=" + pay + ", nalja=" + nalja
				+ "]";
	}

	public Emp03Dto() {
		// TODO Auto-generated constructor stub
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public int getSabun() {
		return sabun;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	
	
}     

