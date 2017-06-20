package com.yangmengjie.interecptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.entity.Employee;
import com.entity.FunctionEntity;
import com.entity.RoleEntity;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.yangmengjie.dao.dao.FunctionDao;
import com.yangmengjie.dao.dao.RoleDao;
import com.yangmengjie.dao.daoImp.FunctionDaoImpl;
import com.yangmengjie.dao.daoImp.RoleDaoImpl;
import com.yangmengjie.service.service.EmpService;
import com.yangmengjie.service.serviceImp.EmpServiceImp;
/**
 * 过滤action权限。
 * @author yang
 *
 */
public class UserInterecptor extends MethodFilterInterceptor{
	
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		
		return arg0.invoke();
	}
	
}
