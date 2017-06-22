package com.yangmengjie.service.serviceImp;

import java.util.Date;
import java.util.List;

import com.entity.Employee;

import com.util.EmployeeBean;
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
	public EmployeeBean selectEmployee(Integer pageSize, Integer currentPage,
			Integer id, String hireDate, String username, Integer statusId) {
			int page = pageSize==null?4:pageSize;
			int curr = currentPage==null?1:currentPage;
			int startIndex = (curr-1)*page;
			List<Employee> empList = ed.selectEmployee(startIndex,page,id, hireDate, username, statusId);
			int pageCount = ed.selectEmpCount(id, hireDate, username, statusId);
			System.out.println(pageCount);
			EmployeeBean eb = new EmployeeBean();
			int allPage = (int) Math.ceil(pageCount*1.0/page);
			eb.setAllPage(allPage);
			eb.setCurrentPage(curr);
			eb.setPageSize(page);
			eb.setList(empList);
		return eb;
	}

	@Override
	public int motifyEmpByName(String name, String newPassword1) {
		return ed.motifyEmpByName(name, newPassword1);
	}

	@Override
	public int deleteEmpById(int emp_id) {
		return ed.deleteEmpById(emp_id);
	}

	
}
