package com.yangmengjie.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import net.sf.json.JSONArray;


import com.entity.RoleEntity;
import com.util.BaseAction;
import com.yangmengjie.service.service.RoleService;
import com.yangmengjie.service.serviceImp.RoleServiceImpl;

public class EmpRoleAction extends BaseAction{
	RoleService ros = new RoleServiceImpl();
	/**
	 * 查找所有角色信息。
	 * @return
	 */
	public String selectRole(){
		List<RoleEntity> roleList = ros.selectRole();
		String s = JSONArray.fromObject(roleList).toString();
		try {
			PrintWriter out = this.getResponse().getWriter();
			out.print(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 根据用户ID得到用户角色。
	 * @return
	 */
	public String selectRoleById(){
		return "empRole";
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
