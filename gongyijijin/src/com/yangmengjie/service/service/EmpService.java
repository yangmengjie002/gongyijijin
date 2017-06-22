package com.yangmengjie.service.service;

import java.util.Date;
import java.util.List;

import com.entity.Employee;
import com.util.EmployeeBean;


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
	
	/**
	 * 通过条件查询员工集合。
	 * @param id
	 * @param id2 
	 * @param currentPage 
	 * @param string
	 * @param username
	 * @param statuid
	 * @return
	 */
	public EmployeeBean selectEmployee(Integer pageSize,Integer currentPage, Integer id, String hireDate,String username,Integer statuid);
	/**
	 * 修改用户密码。
	 * @param role
	 * @param newPassword1
	 * @return
	 */
	public int motifyEmpByName(String name, String newPassword1);
	/**
	 * 删除用户。
	 * @param emp_id
	 * @return
	 */
	public int deleteEmpById(int emp_id);
}
