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
	 * 根据员工id删除角色。
	 * @param id
	 * @return
	 */
	public int deleRole(int id);
	
	/**
	 * 根据员工编号给员工添加角色。
	 * @param id
	 * @param roleid
	 * @return
	 */
	public int addRole(int id,int roleid);
	/**
	 * 向角色表中插入角色。
	 * @param roleName
	 * @return
	 */
	public int addRole1(String roleName);
	/**
	 * 根据角色ID删除角色。
	 * @param roleid
	 * @return
	 */
	public int deleteRole(int roleid);
	/**
	 * 根据角色ID查找角色。
	 * @param roleid
	 * @return
	 */
	public RoleEntity selectRoleByRoleid(int roleid);
}
