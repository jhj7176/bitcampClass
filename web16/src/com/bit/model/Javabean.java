package com.bit.model;

import java.util.Date;

public class Javabean{
	
	private int su1;
	private double su2;
	private String name;
	
	public Javabean() {
		// TODO Auto-generated constructor stub
	}
	
	public int getSu1() {
		return su1;
	}
	
	public void setSu1(int su1) {
		this.su1 = su1;
	}
	
	public double getSu2() {
		return su2;
	}
	
	public void setSu2(double su2) {
		this.su2 = su2;
	}
 
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Javabean [su1=" + su1 + ", su2=" + su2 + ", name=" + name + "]";
	}
	
 
	
	
	
}