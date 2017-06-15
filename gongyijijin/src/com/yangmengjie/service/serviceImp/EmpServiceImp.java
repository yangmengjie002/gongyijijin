package com.yangmengjie.service.serviceImp;

import com.entity.Employee;
import com.yangmengjie.dao.dao.EmpDao;
import com.yangmengjie.dao.daoImp.EmpDaoImp;
import com.yangmengjie.service.service.EmpService;

public class EmpServiceImp implements EmpService {
	private EmpDao ed= new EmpDaoImp();
	@Override
	public int addEmployee(Employee em) {
		
		return 0;
	}

	@Override
	public Employee findEmployee(String logName, String logPwd) {
		return ed.findEmployee(logName, logPwd);
	}

	
}
