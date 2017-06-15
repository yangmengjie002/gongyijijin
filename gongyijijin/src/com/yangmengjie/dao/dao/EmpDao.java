package com.yangmengjie.dao.dao;

import com.entity.Employee;

public interface EmpDao {
	/**
	 * 添加用户
	 * @param em
	 * @return
	 */
	public int addEmployee(Employee em);
	/**
	 * 查找用户通过用户名，密码。
	 * @param logName
	 * @param logPwd
	 * @return
	 */
	public Employee findEmployee(String logName, String logPwd);
}
