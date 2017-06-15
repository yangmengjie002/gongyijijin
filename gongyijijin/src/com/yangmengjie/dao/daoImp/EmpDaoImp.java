package com.yangmengjie.dao.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.Employee;
import com.util.BaseDao;
import com.util.ConnPool;
import com.yangmengjie.dao.dao.EmpDao;

public class EmpDaoImp implements EmpDao {
	private ConnPool cp = new ConnPool();

	@Override
	public int addEmployee(Employee em) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Employee findEmployee(String logName, String logPwd) {
		String sql = "select * from employee_information where emp_user=? and emp_pwd=?";
		Object[] params={logName,logPwd};
		
		Connection con = cp.getConnection();
		Employee em = new Employee();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			BaseDao.setParams(ps, params);
			System.out.println(logName+logPwd);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				System.out.println("aaaa");
				em.setEmp_user(rs.getString("emp_user"));
				em.setEmp_add(rs.getString("emp_add"));
				em.setEmp_hire_date(rs.getString("emp_hire_date"));
				em.setEmp_id(rs.getInt("emp_id"));
				em.setEmp_id_num(rs.getString("emp_id_No"));
				em.setEmp_leave_date(rs.getString("emp_leave_date"));
				em.setEmp_phone(rs.getString("emp_phone"));
				em.setEmp_pwd(rs.getString("emp_pwd"));
				em.setEmp_status_id(rs.getString("emp_status_id"));
				em.setEmp_name(rs.getString("emp_name"));
				System.out.println(em.getEmp_add());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			cp.close(con);
		}
		return em;
	}

}
