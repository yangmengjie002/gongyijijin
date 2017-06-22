package com.yuxiaofei.pro_apply.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.util.BaseAction;
import com.yuxiaofei.pro_apply.dao.dao.FirstCheckMoney;
import com.yuxiaofei.pro_apply.dao.daoImpl.FCMDImpl;
import com.yuxiaofei.pro_apply.entity.FirstCheck;

public class FirstCheckAction extends BaseAction implements ModelDriven<FirstCheck>{

	@Override
	public FirstCheck getModel() {
		// TODO Auto-generated method stub
		return pt;
	}
	private FirstCheck pt=new FirstCheck();
	public FirstCheck getPt() {
		return pt;
	}
	public void setPt(FirstCheck pt) {
		this.pt = pt;
	}
	FirstCheckMoney fc=new FCMDImpl();
	public String select(){
		
		System.out.println(pt.getUserName());
		System.out.println(pt.getMoney());
		System.out.println(pt.getProName());
		if(pt.getUserName()!=null){
			List <Map<String,Object>> findFirstUser=fc.findUserByUsername(pt.getUserName());
				Map map=(Map) ActionContext.getContext().get("userName");
				map.put("find",findFirstUser);
				
				return null;
				
		}else if(pt.getMoney()>0){
			List <Map<String,Object>> findFirstMoney=fc.findChekcNum(pt.getMoney());
			Map map=(Map) ActionContext.getContext().get("money");
			map.put("find",findFirstMoney);
			return null;
		}else if(pt.getProName()!=null){
			List <Map<String,Object>> findFirstName=fc.findMoneyApplyName(pt.getProName());
		
			Map map=(Map) ActionContext.getContext().get("proName");
			map.put("find",findFirstName);
			return null;
		}
		
		return null;  
		
	}
	
	
	
}
