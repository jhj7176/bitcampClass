package com.bit.web02;

class Target{
	
	
	public Target(){
		
		System.out.println("instance get");
	}
	
	void func(){
	
		System.out.println("Target run~");
		
	}
	
}


public class Ex01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		try {
			Class cl = Class.forName("com.bit.web02.Target");
			Target result = (Target)cl.newInstance();
//			result.func();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}//main

}//ex01ClassEnd
