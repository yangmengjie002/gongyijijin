package com.yangmengjie.dao.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.entity.Employee;
import com.util.BaseDao;
import com.util.ConnPool;
import com.yangmengjie.dao.dao.EmpDao;

public class EmpDaoImp implements EmpDao {
	private ConnPool cp = new ConnPool();

	@Override
	public int addEmployee(Employee em) {
		// TODO Auto-generated method stub
		String sql = "insert into employee_information values(?,?,?,?,?,?,?,?,?)";
		Object[] params={em.getEmp_name(),em.getEmp_phone(),em.getEmp_id_num(),em.getEmp_hire_date(),em.getEmp_add(),1,em.getEmp_user(),em.getEmp_pwd(),em.getEmp_leave_date()};
		return BaseDao.executeUpdate(sql, params);
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

	@Override
	public List<Employee> selectEmployee(int startIndex,int page,Integer id, Date hireDate,
			String username, Integer statusId) {
		String sql = "select top "+page+ "* from employee_information where emp_id not in(select top "+startIndex+" emp_id from employee_information)";
		System.out.println(id);
		if(id!=null){
			sql += " and emp_id="+id;
		}
		if(hireDate!=null){
			sql += " and emp_hire_date > '" + hireDate+"'";
		}
		if(!"".equals(username)){
			sql += " and emp_user like "+"'%"+username+"%'";
		}
		if(statusId!=null){
			sql += " and emp_status_id = "+statusId;
		}
		System.out.println(sql);
		Connection con = cp.getConnection();
		List<Employee> empList = new ArrayList<Employee>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Employee em = new Employee();
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
				empList.add(em);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			cp.close(con);
		}
		
		return empList;
	}

	@Override
	public int selectEmpCount(Integer id, Date hireDate, String username,
			Integer statusId) {
		String sql = "select count(*) from employee_information where 1=1";
		if(id!=null){
			sql += " and emp_id="+id;
		}
		if(hireDate!=null){
			sql += " and emp_hire_date > '" + hireDate+"'";
		}
		if(!"".equals(username) ){
			sql += " and emp_user like "+"'%"+username+"%'";
		}
		if(statusId!=null){
			sql += " and emp_status_id = "+statusId;
		}
		System.out.println(sql);
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		try {
			int flag = (Integer) qr.query(sql,new ScalarHandler());
			return flag;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
