package com.action;

import com.entity.AdminUser;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
/**
 * 控制后台用户登录
 * @author yang
 *
 */
public class UserAction{
	public String login(){
		return "login";
	}
	
}
