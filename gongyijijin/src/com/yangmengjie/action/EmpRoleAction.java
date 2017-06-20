package com.yangmengjie.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.management.relation.Role;

import net.sf.json.JSONArray;


import com.entity.Employee;
import com.entity.RoleEntity;
import com.util.BaseAction;
import com.yangmengjie.dao.dao.EmpDao;
import com.yangmengjie.dao.dao.RoleDao;
import com.yangmengjie.dao.daoImp.EmpDaoImp;
import com.yangmengjie.dao.daoImp.RoleDaoImpl;
import com.yangmengjie.service.service.RoleService;
import com.yangmengjie.service.serviceImp.RoleServiceImpl;

public class EmpRoleAction extends BaseAction{
	RoleDao ros = new RoleDaoImpl();
	EmpDao ed = new EmpDaoImp();
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * 查找用户角色信息。
	 * @return
	 */
	public String allRole(){
		Employee ey = ed.getEmpById(id);
		List<RoleEntity> roleList = ros.selectRoleById(id);
		List<RoleEntity> roList = ros.selectRole();
		this.getRequest().setAttribute("roleList", roleList);
		this.getRequest().setAttribute("roList", roList);
		this.getRequest().setAttribute("ey", ey);
		return "success";
	}
	/**
	 * 修改用户及权限。
	 * @return
	 */
	public String motifyRole1(){
		try {
			this.getRequest().setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int statusid = Integer.parseInt(this.getRequest().getParameter("statuSelect"));
		int  roleid = Integer.parseInt(this.getRequest().getParameter("roleSelect"));
		int me = Integer.parseInt(this.getRequest().getParameter("me"));
		int flag = ed.updateStatu(me, statusid);
		int flag1 = ros.deleRole(me);
		int flag2 = ros.addRole(me, roleid);
		if(flag>0&&flag2>0&&flag1>0){
			return "motifyRole1";
		}
		try {
			this.getResponse().getWriter().write("修改异常<a href='javascript:history.go(-1)'>返回</a>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 添加用户角色。
	 * @return
	 */
	public String addRole(){
		return "addRole";
	}
	
	/**
	 * 删除用户角色。
	 * @return
	 */
	public String deletRole(){
		return "deletRole";
	}
	
	
	/**
	 * 修改用户角色。
	 * @return
	 */
	public String motifyRole(){
		return "motifyRole";
	}
}
