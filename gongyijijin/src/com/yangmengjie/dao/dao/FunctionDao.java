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
	/**
	 * 查询出所有的权限。
	 * @return
	 */
	public List<FunctionEntity> selectAllFunction();
	/**
	 * 根据角色ID删除角色权限。
	 * @param roleid
	 * @return
	 */
	public int deleteFunById(int roleid);
	
	/**
	 * 根据角色ID插入角色权限。
	 * @param id
	 * @param params
	 * @return
	 */
	public int addFunById(int id,int[]params);
	/**
	 * 根据角色ID查找其权限；
	 * @return
	 */
	public List<FunctionEntity> selectFunById(int roleid);
	/**
	 * 插入新权限。
	 * @return
	 */
	public int insertFun(String functionName,String url);
	/**
	 * 根据ID删除权限。
	 * @param id
	 * @return
	 */
	public int deleteFun(int id);
}
