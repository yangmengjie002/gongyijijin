package com.yangmengjie.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.management.relation.Role;

import net.sf.json.JSONArray;


import com.entity.Employee;
import com.entity.FunctionEntity;
import com.entity.RoleEntity;
import com.util.BaseAction;
import com.yangmengjie.dao.dao.EmpDao;
import com.yangmengjie.dao.dao.FunctionDao;
import com.yangmengjie.dao.dao.RoleDao;
import com.yangmengjie.dao.daoImp.EmpDaoImp;
import com.yangmengjie.dao.daoImp.FunctionDaoImpl;
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
		RoleEntity roleList = ros.selectRoleById(id);
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
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 添加角色权限。
	 * @return
	 */
	public String roleConfig(){
		List<RoleEntity> roList = ros.selectRole();
		this.getRequest().setAttribute("roList", roList);
		return "config";
	}



	/**
	 * 修改角色权限动作。
	 * @return
	 */
	public String motifyRole(){
		int roleid = Integer.parseInt(this.getRequest().getParameter("roleid"));
		FunctionDao fd = new FunctionDaoImpl();
		//获取角色。
		RoleEntity re = ros.selectRoleByRoleid(roleid);
		//角色拥有的权限。
		List<FunctionEntity> fuList = fd.selectFunById(roleid);
		//所有权限。
		List<FunctionEntity> funList = fd.selectAllFunction();
		this.getRequest().setAttribute("funList", funList);
		this.getRequest().setAttribute("fuList", fuList);
		this.getRequest().setAttribute("re", re);
		return "motifyRole3";
	}

	/**
	 * 添加角色动作
	 */
	public String addRole(){
		
		String roleName1 = this.getRequest().getParameter("roleName");
		String roleName =null;
		try {
			roleName = new String(roleName1.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println(roleName);
		if(roleName!=null){
			int flag = ros.addRole1(roleName);
			if(flag>0){
				return "motifyRole2";
			}
		}
		try {
			this.getResponse().getWriter().write("添加异常<a href='javascript:history.go(-1)'>返回</a>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 删除角色动作。
	 * @return
	 */
	public String deleteRole(){
		int roleid = Integer.parseInt(this.getRequest().getParameter("roleid"));
		int flag = ros.deleteRole(roleid);
		if(flag>0){
			return "motifyRole2";
		}
		try {
			this.getResponse().getWriter().write("删除异常<a href='javascript:history.go(-1)'>返回</a>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 修改角色权限动作。
	 * @return
	 */
	public String motifyFun(){
		int roleid = Integer.parseInt(this.getRequest().getParameter("funid"));
		String[] funString = this.getRequest().getParameterValues("fun");
		int[] funids = new int[funString.length];
		for (int i = 0; i < funString.length; i++) {
			funids[i] = Integer.parseInt(funString[i]);
		}
		FunctionDao fd = new FunctionDaoImpl();
		int flag1 = fd.deleteFunById(roleid);
		int flag2 = fd.addFunById(roleid, funids);
		return "config";
	}
	/**
	 * 添加权限。
	 * @return
	 */
	public String addFunction(){

		FunctionDao fd = new FunctionDaoImpl();
		String functionName1 = this.getRequest().getParameter("functionName");
		
		String functionName=null;
		try {
			functionName = new String(functionName1.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println(functionName);
		String url = this.getRequest().getParameter("url");
		if(functionName!=null&&url!=null){
			int flag = fd.insertFun(functionName, url);
			if(flag>0){
				return "addFun";
			}
		}
		try {
			this.getResponse().getWriter().write("插入异常<a href='javascript:history.go(-1)'>返回</a>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 删除权限。
	 * @return
	 */
	public String deleteFun(){
		FunctionDao fd = new FunctionDaoImpl();
		String str = this.getRequest().getParameter("str");
		String[] ss = str.split(";");
		int flag = 0;
		for(String s:ss){
			if(!"".equals(s)&&s!=null && Integer.parseInt(s)!=0){
				flag +=fd.deleteFun(Integer.parseInt(s));
			}
		}
		if(flag==ss.length){
			return "deletFun";
		}
		try {
			this.getResponse().getWriter().write("插入异常<a href='javascript:history.go(-1)'>返回</a>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
