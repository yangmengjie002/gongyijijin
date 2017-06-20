package com.yangmengjie.dao.dao;

import java.util.Date;
import java.util.List;

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
	/**
	 * 
	 * @param id
	 * @param id2 
	 * @param page 
	 * @param hireDate
	 * @param username
	 * @param statusId
	 * @return
	 */
	public List<Employee> selectEmployee(int startIndex,int page, Integer id, String hireDate,String username,Integer statusId);
	/**
	 * 查询符合条件的员工总条数。
	 * @param id
	 * @param hireDate
	 * @param username
	 * @param statusId
	 * @return
	 */
	public int selectEmpCount(Integer id, String hireDate,String username,Integer statusId);
	/**
	 * 修改用户密码。
	 * @param name
	 * @param newPassword1
	 * @return
	 */
	public int motifyEmpByName(String name, String newPassword1);
}
