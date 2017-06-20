package com.shidongfang.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shidongfang.biz.DonTableBiz;
import com.shidongfang.biz.imp.DonTableBizImp;

import com.shidongfang.util.BaseAction;

import com.entity.DonTable;
/**
 * @描述 用户业务控制器
 * @作者
 * @公司
 * @时间 2017-6-19
 */
public class DonTableAction  extends ActionSupport implements ModelDriven<DonTable>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;//序列化
	//DonTableDao dd=new DonTableDaoImp();
	private DonTable dt=new DonTable(); 
	DonTableBiz db=new DonTableBizImp();
	
	public DonTable getDt() {
		return dt;
	}

	public void setDt(DonTable dt) {
		this.dt = dt;
	}

	@Override
	public DonTable getModel() {
		
		return dt;
	}
	
	public String addDonTable(){  //增加捐款金额 捐款时间到数据库
		
		
			
			db.addDonTable(dt);
		
		
		return "to_select";
	}
	
	public String select() throws Exception {
		
		List<Map<String, Object>> select = db.select();
		Map map=(Map) ActionContext.getContext().get("request");
		map.put("dontable1", select);
		return "list";
	}
	
}
