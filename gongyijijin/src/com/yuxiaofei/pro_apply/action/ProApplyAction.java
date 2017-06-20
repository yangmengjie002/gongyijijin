package com.yuxiaofei.pro_apply.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.util.BaseAction;
import com.yuxiaofei.pro_apply.dao.FundApplyDaoImpl;
import com.yuxiaofei.pro_apply.entity.BigProAppMoneyInfo;
import com.yuxiaofei.pro_apply.entity.FundApplyInfo;

/**
 * @name proApplyAction
 * @author yufei
 * @papam getMOdel()模型驱动
 * @papam save() 获取前数据
 * @return
 */
@ParentPackage("struts-default")
public class ProApplyAction extends ActionSupport implements ModelDriven<FundApplyInfo>{
	@Override
	public FundApplyInfo getModel() {
		// TODO Auto-generated method stub
		return fai;
	}
	private FundApplyInfo fai =new FundApplyInfo();
	public FundApplyInfo getFai() {
		return fai;
	}
	public void setFai(FundApplyInfo fai) {
		this.fai = fai;
	}
	@Action(value="MoneyApplySave")
	public String save(){
		BigProAppMoneyInfo bpam=new BigProAppMoneyInfo();
		bpam.setMoney_app_num(fai.getPro_money());
		System.out.println(3);
		bpam.setMoney_app_reason(fai.getPro_appl_reason());
		System.out.println(4+fai.getPro_appl_reason());
		System.out.println(5);
		bpam.setUser_id(3);
		FundApplyDaoImpl bs=new FundApplyDaoImpl();
		bs.addApplyFund();
		return "login";
	}



	

	
	
}
