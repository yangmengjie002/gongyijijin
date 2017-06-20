package com.yangmengjie.dao.dao;

import java.util.List;

import com.entity.RoleEntity;
/**
 * 角色管理。
 * @author yang
 *
 */
public interface RoleDao {
	/**
	 * 查找所有的角色。
	 * @return
	 */
	public List<RoleEntity> selectRole();
	/**
	 * 根据用户ID查找用户的角色。
	 * @param emp_id
	 * @return
	 */
	public RoleEntity selectRoleById(int emp_id);
	/**
	 * 增加新的角色。
	 * @param roleName
	 * @return
	 */
	public int addRole(String roleName);
	
	
}
