package com.yangmengjie.service.serviceImp;

import java.util.List;

import com.entity.RoleEntity;
import com.yangmengjie.dao.dao.RoleDao;
import com.yangmengjie.dao.daoImp.RoleDaoImpl;
import com.yangmengjie.service.service.RoleService;

public class RoleServiceImpl implements RoleService {

	RoleDao rd = new RoleDaoImpl();
	@Override
	public List<RoleEntity> selectRole() {
		return rd.selectRole();
	}

}
