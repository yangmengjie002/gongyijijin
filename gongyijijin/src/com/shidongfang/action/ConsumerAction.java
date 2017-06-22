package com.shidongfang.action;

import java.util.List;
import java.util.Map;

import com.entity.Consumer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.shidongfang.biz.ConsumerBiz;
import com.shidongfang.biz.imp.ConsumerBizImp;


public class ConsumerAction extends ActionSupport implements ModelDriven<Consumer>{
	private Consumer cu=new Consumer();
	ConsumerBiz cb=new ConsumerBizImp();
	
	@Override
	public Consumer getModel() {
		
		return cu;
	}
	public Consumer getCu() {
		return cu;
	}
	public void setCu(Consumer cu) {
		this.cu = cu;
	}
	public ConsumerBiz getCb() {
		return cb;
	}
	public void setCb(ConsumerBiz cb) {
		this.cb = cb;
	}
	
	@Override
	public String execute() throws Exception {
		
		List list = cb.findConsumerByUser_nameAndUser_pwd(cu.getUser_name(),cu.getUser_pwd());
		if(null!=list&&list.size()>0){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("username", cu.getUser_name());
			return "lejuan";
		}
		return "home";
	}
	
}
