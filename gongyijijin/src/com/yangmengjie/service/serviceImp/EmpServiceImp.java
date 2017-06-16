package com.yangmengjie.service.serviceImp;

import java.util.List;

import com.entity.Employee;
import com.yangmengjie.dao.dao.EmpDao;
import com.yangmengjie.dao.daoImp.EmpDaoImp;
import com.yangmengjie.service.service.EmpService;

public class EmpServiceImp implements EmpService {
	private EmpDao ed= new EmpDaoImp();
	@Override
	public int addEmployee(Employee em) {
		int flag = ed.addEmployee(em);
		return flag;
	}

	@Override
	public Employee findEmployee(String logName, String logPwd) {
		return ed.findEmployee(logName, logPwd);
	}

	@Override
	public List<Employee> selectEmployee(Integer id, String hireDate,
			String username, Integer statusId) {
		List<Employee> empList = ed.selectEmployee(id, hireDate, username, statusId);
		
		return empList;
	}

	
}
