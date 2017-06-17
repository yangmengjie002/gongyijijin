package com.shidongfang.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.shidongfang.dao.DonTableDao;
import com.shidongfang.dao.imp.DonTableDaoImp;
import com.util.BaseAction;

import com.entity.DonTable;


public class DonTableAction  extends BaseAction{
	DonTableDao dd=new DonTableDaoImp();
	DonTable dt=new DonTable();
	

	public DonTable getDt() {
		return dt;
	}

	public void setDt(DonTable dt) {
		this.dt = dt;
	}
	
	public String select(){
		List<DonTable> de=dd.select();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("list", de);
		return "dontable";
	}
	
	
}
