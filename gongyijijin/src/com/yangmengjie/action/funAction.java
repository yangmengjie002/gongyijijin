package com.yangmengjie.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.entity.FunctionEntity;
import com.util.BaseAction;
import com.yangmengjie.dao.dao.FunctionDao;
import com.yangmengjie.dao.daoImp.FunctionDaoImpl;

public class funAction extends BaseAction{
	private FunctionDao fd = new FunctionDaoImpl();
	public String motifyFun(){
		int roleid = Integer.parseInt(this.getRequest().getParameter("roleid"));
		List<FunctionEntity> funList = fd.selectAllFunction();
		HttpServletRequest request = this.getRequest();
		request.setAttribute("funList", funList);
		return null;
	}
}
