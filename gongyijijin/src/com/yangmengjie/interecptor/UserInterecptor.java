package com.yangmengjie.interecptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class UserInterecptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		
		
		
		return arg0.invoke();
	}
	
}
