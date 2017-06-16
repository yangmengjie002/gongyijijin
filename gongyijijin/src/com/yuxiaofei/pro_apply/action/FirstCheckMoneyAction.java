package com.yuxiaofei.pro_apply.action;

import com.entity.ProExamMoneyTable;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class FirstCheckMoneyAction extends ActionSupport implements ModelDriven<ProExamMoneyTable>{

	@Override
	public ProExamMoneyTable getModel() {
		// TODO Auto-generated method stub
		return pt;
	}
	private ProExamMoneyTable pt=new ProExamMoneyTable();
	public ProExamMoneyTable getPt() {
		return pt;
	}
	public void setPt(ProExamMoneyTable pt) {
		this.pt = pt;
	}
	public String update(){
		
		return "error";
	}
	
	
}
