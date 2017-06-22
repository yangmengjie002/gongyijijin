package com.yuxiaofei.pro_apply.action;

import java.io.PrintWriter;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ModelDriven;
import com.util.BaseAction;
import com.yuxiaofei.pro_apply.dao.GetSecondCount;
import com.yuxiaofei.pro_apply.dao.daoImpl.FDaoImpl;
import com.yuxiaofei.pro_apply.dao.daoImpl.SDaoImpl;
import com.yuxiaofei.pro_apply.dao1.FDao;
import com.yuxiaofei.pro_apply.dao1.MoneyExamBean;
import com.yuxiaofei.pro_apply.dao1.SDao;
import com.yuxiaofei.pro_apply.entity.SecondCheck;



public class SecondCheckAction extends BaseAction implements ModelDriven<SecondCheck> {
	private Integer pageSize;
	private Integer currentPage;
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	@Override
	public SecondCheck getModel() {
		// TODO Auto-generated method stub
		return sc;
	}
	private SecondCheck sc=new SecondCheck();
	SDao sd=new SDaoImpl();
	public SecondCheck getSc() {
		return sc;
	}
	public void setSc(SecondCheck sc) {
		this.sc = sc;
	}

	public String select(){//分页以及显示分页
		GetSecondCount gt=new GetSecondCount();
		MoneyExamBean bean=gt.selectMoneyCheck(pageSize, currentPage, sc.getMoneyId(),
				sc.getProName() , sc.getFirstCheckEmp(), sc.getApplyReason(), 
				sc.getMoney(), sc.getStatusId());
		String s = JSONObject.fromObject(bean).toString();
		System.out.println(bean.getList2().get(0).getMoney());
		System.out.println(bean.getList2().get(0).getProName());
		try{
		
			PrintWriter out = this.getResponse().getWriter();
			
			out.print(s);
			
		}catch(Exception e){
			System.out.println(e.getMessage()+111);
		}
		return null;	
		
	}
	public String update(){//修改审查状态为未通过
		GetSecondCount gt=new GetSecondCount();
		String money=getRequest().getParameter("consent");
		
		sd.update(Integer.parseInt(money),2,2);//第一个2是员工编号
		
		System.out.println(money);
		return "ret";
	}
	public String update2(){//修改审查状态为通过
		FDao fd=new FDaoImpl();
		String money=getRequest().getParameter("reject");
		
		sd.update(Integer.parseInt(money),1,2);//第一个2是员工编号,第二个2是审核状态
		
		System.out.println(money);
		return "ret";	
	}
		
	
		
	
	
}
