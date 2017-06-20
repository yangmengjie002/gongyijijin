package com.yangmengjie.service.service;

import java.util.List;

import com.entity.RoleEntity;

public interface RoleService {
	/**
	 * 查找所有的角色。
	 * @return
	 */
	public List<RoleEntity> selectRole();
	
}
