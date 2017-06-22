package com.yuxiaofei.pro_apply.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.util.BaseAction;
import com.yuxiaofei.pro_apply.dao.dao.SecondCheckDao;
import com.yuxiaofei.pro_apply.dao.daoImpl.SCDImpl;
import com.yuxiaofei.pro_apply.entity.SecondCheck;

public class SecondCheckAction extends BaseAction implements ModelDriven<SecondCheck> {
	@Override
	public SecondCheck getModel() {
		// TODO Auto-generated method stub
		return sc;
	}
	private SecondCheck  sc=new SecondCheck();
	
	public SecondCheck getSc() {
		return sc;
	}
	public void setSc(SecondCheck sc) {
		this.sc = sc;
	}
	public String update(){
    	
		return null;
	}
	SecondCheckDao scd=new SCDImpl();
	public String select(){
		
		System.out.println(sc.getFirstCheckEmp());

		System.out.println(sc.getProName());
	
		System.out.println(sc.getProId());
	  if(sc.getFirstCheckEmp()!=null){
		  List <Map<String,Object>>  firstCheckEmp=scd.findCheckName(sc.getFirstCheckEmp());
			Map map=(Map) ActionContext.getContext().get("firstCheckEmp");
			map.put("check",firstCheckEmp);
			return null;
	  }else if(sc.getProName()!=null){ 
		  List <Map<String,Object>>  proName=scd.findMondyApplyName(sc.getProName());
			Map map=(Map) ActionContext.getContext().get("proName");
			map.put("check",proName);
			return null;
	  }else if(sc.getProId()!=null){
		  List <Map<String,Object>>  proId=scd.findChekcId(sc.getProId());
			Map map=(Map) ActionContext.getContext().get("proId");
			map.put("check",proId);
			return null;
	  }
	  
		
		
		return null;
		
	}
	
}
