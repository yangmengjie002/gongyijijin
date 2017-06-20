package com.yangmengjie.dao.dao;

import java.util.List;

import com.entity.FunctionEntity;

/**
 * 权限管理。
 * @author yang
 *
 */
public interface FunctionDao {
	/**
	 * 根据角色查找用户权限;
	 * @param roleName
	 * @return
	 */
	public List<FunctionEntity> selectFunctionByRoleName(String roleName);
	
	/**
	 * 根据角色名删除角色权限
	 * @param roleName
	 * @return
	 */
	public int deleteRole_FunByRoleName(String roleName);

	/**
	 * 根据角色名插入角色权限;
	 * @param roleId
	 * @param params
	 * @return
	 */
	public int insertRole_FunByRoleName(int roleId,Object[] params);
}
