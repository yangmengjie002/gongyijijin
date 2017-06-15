package com.yangmengjie.service.service;

import com.entity.Employee;

public interface EmpService {
	/**
	 * 添加员工
	 * @param em
	 * @return
	 */
	public int addEmployee(Employee em);
	/**
	 * 根据用户名和密码查找员工信息。
	 * @param logName
	 * @param logPwd
	 * @return
	 */
	public Employee findEmployee(String logName,String logPwd);
}
