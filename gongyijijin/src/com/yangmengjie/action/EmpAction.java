package com.yangmengjie.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.entity.Employee;
import com.util.BaseAction;
import com.yangmengjie.service.service.EmpService;
import com.yangmengjie.service.serviceImp.EmpServiceImp;

public class EmpAction extends BaseAction{
	private Employee em;
	private EmpService es = new EmpServiceImp();
	public String login(){
		System.out.println(em.getEmp_user()+em.getEmp_pwd());


		HttpServletRequest request = ServletActionContext.getRequest();
		String role = (String) request.getSession().getAttribute("role");
		String code = (String) request.getSession().getAttribute("code");
		String code1 = request.getParameter("code");
		if(!code.equalsIgnoreCase(code1)){
			request.setAttribute("msg", "验证码错误，返回登录页面");
			return "entryBack_error";
		}else{
			Employee emp = es.findEmployee(em.getEmp_user(), em.getEmp_pwd());
			System.out.println(em.getEmp_user());
			if(emp!=null){
				this.getSession().setAttribute("role", em.getEmp_user());
				return SUCCESS;
			}else{
				this.getRequest().setAttribute("msg", "用户名密码错误或用户不存在");
				return "entryBack_error";
			}
		}
		
	}
	public Employee getEm() {
		return em;
	}
	public void setEm(Employee em) {
		this.em = em;
	}

}
