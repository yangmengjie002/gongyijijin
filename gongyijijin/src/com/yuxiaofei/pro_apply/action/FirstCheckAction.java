package com.yuxiaofei.pro_apply.action;

import java.io.PrintWriter;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ModelDriven;
import com.util.BaseAction;
import com.yuxiaofei.pro_apply.dao.getCount;

import com.yuxiaofei.pro_apply.dao.daoImpl.FDaoImpl;
import com.yuxiaofei.pro_apply.dao1.FDao;
import com.yuxiaofei.pro_apply.dao1.MoneyExamBean;
import com.yuxiaofei.pro_apply.entity.FirstCheck;

public class FirstCheckAction extends BaseAction implements ModelDriven<FirstCheck>{
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

	public FDao getFc() {
		return fc;
	}
	public void setFc(FDao fc) {
		this.fc = fc;
	}
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
	FDao fc=new FDaoImpl();
	public String select(){//分页以及显示分页
		System.out.println(pt.getUserName());
		System.out.println(pt.getMoney());
		System.out.println(pt.getProName());
		getCount gt=new getCount();
		MoneyExamBean bean=gt.selectMoneyCheck(pageSize, currentPage, pt.getCheckId(),
				pt.getProName(), pt.getUserName(), pt.getMoney(),
				pt.getReason() ,
				pt.getCheckStatusId()
				);
		String s = JSONObject.fromObject(bean).toString();
		System.out.println(bean.getList1().get(0).getReason());	
		try{
		
			PrintWriter out = this.getResponse().getWriter();
			
			out.print(s);
			
		}catch(Exception e){
			System.out.println(e.getMessage()+111);
		}
		return null;	
		
		
	}
	public String update(){//修改审查状态为未通过
		FDao fd=new FDaoImpl();
		String checkId=getRequest().getParameter("consent");
		
		fd.update(Integer.parseInt(checkId),2,2);//第一个2是员工编号
		
		System.out.println(checkId);
		return "re";
	}
	public String update2(){//修改审查状态为通过
		FDao fd=new FDaoImpl();
		String checkId=getRequest().getParameter("reject");
		fd.update(Integer.parseInt(checkId),2,1);//第一个二是员工编号
		System.out.println(checkId);
		return "re";
	}
	public String getEmp(){//添加员工id
		FDao fd=new FDaoImpl();
		fd.addEmpId(1);
		return "re";
		
	}
	
	
	
}
