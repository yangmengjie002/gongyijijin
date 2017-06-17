package com.dao.dao;

import com.entity.AdminUser;
import com.entity.Employee;

public interface SelectDao {
	/**
	 * 查询管理员。
	 */
	
	public Employee getEmp(Employee em);
}
