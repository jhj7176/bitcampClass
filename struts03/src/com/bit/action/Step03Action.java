package com.bit.action;

import com.bit.model.entity.EmpVo;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

public class Step03Action implements Action, ModelDriven<EmpVo> {

	private EmpVo bean = new EmpVo();//�Ķ���Ͱ� �Ѿ�� �� ���� ��ü ����. ���� ���� ���� ���� ����.
	
	
	public EmpVo getBean() {
		return bean;
	}


	public void setBean(EmpVo bean) {
		this.bean = bean;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(bean.toString());
		return Action.SUCCESS;
	}


	@Override
	public EmpVo getModel() { 
		// TODO Auto-generated method stub
		System.out.println("get Method");
		
		return bean;
	}

}
