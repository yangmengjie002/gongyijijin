package com.yuxiaofei.pro_apply.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.util.BaseAction;
import com.yuxiaofei.pro_apply.dao.daoImpl.FundApplyDaoImpl;
import com.yuxiaofei.pro_apply.entity.BigProAppMoneyInfo;
import com.yuxiaofei.pro_apply.entity.DonTabInfo;
import com.yuxiaofei.pro_apply.entity.FundApplyInfo;
import com.yuxiaofei.pro_apply.entity.ProApp;
import com.yuxiaofei.pro_apply.entity.proNameFind;

/**
 * @name proApplyAction
 * @author yufei
 * @papam getMOdel()模型驱动
 * @papam save() 获取前数据
 * @ addPro() 给项目栏添加具有的项目
 * @ addCheck() 进行资金的判断
 */
//@ParentPackage("struts-default")
public class ProApplyAction extends BaseAction implements ModelDriven<FundApplyInfo>{
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
	//@Action(value="MoneyApplySave")
	public String addPro(){
		ProApp pa=new ProApp();	
		FundApplyDaoImpl ad=new FundApplyDaoImpl();	
		pa.setUser_id(3);//获取登陆者id
		List <proNameFind>lis=ad.getInfo(pa);
		HttpServletResponse response = super.getResponse();
		String str = "";
		for (int i = 0; i < lis.size(); i++) {
			str += lis.get(i).getPro_name()+";";
			
		}
		System.out.println(lis);
		try {
			response.getWriter().print(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	public String checkMoney(){
		ProApp pa=new ProApp();	
		FundApplyDaoImpl ad=new FundApplyDaoImpl();	
		pa.setPro_id(3);//获取项目id
		List<DonTabInfo>lis1=ad.getMoney(pa);
		if(Integer.parseInt(fai.getPro_money())>lis1.get(0).getSum()){
			return "error";
		}
		return "right";//请重新输入数据
		
	}
	public String save(){
		
		BigProAppMoneyInfo bp=new BigProAppMoneyInfo();
		bp.setMoney_app_num(fai.getPro_money());
		bp.setMoney_app_reason(fai.getPro_appl_reason());
		bp.setPro_id(3);//获取项目id
		bp.setUser_id(3);//获取登陆者id
		FundApplyDaoImpl ad=new FundApplyDaoImpl();
		 int flag=ad.addApplyFund(bp);
		System.out.println(flag);
		
		
		
		return "error";
		
	}
	



	

	
	
}
