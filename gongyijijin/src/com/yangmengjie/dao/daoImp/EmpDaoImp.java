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
		int flag = -1;
		String sql = "insert into employee_information(emp_name,emp_phone,emp_id_num,emp_hire_date,emp_add,emp_status_id,emp_user,emp_pwd) values(?,?,?,?,?,?,?,?)";
		Object[] params={em.getEmp_name(),em.getEmp_phone(),em.getEmp_id_num(),em.getEmp_hire_date(),em.getEmp_add(),1,em.getEmp_user(),em.getEmp_pwd()};
		flag = BaseDao.executeUpdate(sql, params);
		return flag;
	}

	@Override
	public Employee findEmployee(String logName, String logPwd) {
		String sql = "select * from employee_information where emp_user=? and emp_pwd=? and emp_status_id=1";
		Object[] params={logName,logPwd};
		Connection con = cp.getConnection();
		Employee em = null;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			BaseDao.setParams(ps, params);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				em = new Employee();
				em.setEmp_user(rs.getString("emp_user"));
				em.setEmp_add(rs.getString("emp_add"));
				em.setEmp_hire_date(rs.getString("emp_hire_date"));
				em.setEmp_id(rs.getInt("emp_id"));
				em.setEmp_id_num(rs.getString("emp_id_No"));
				em.setEmp_leave_date(rs.getString("emp_leave_date"));
				em.setEmp_phone(rs.getString("emp_phone"));
				em.setEmp_pwd(rs.getString("emp_pwd"));
				em.setEmp_status_id(rs.getInt("emp_status_id"));
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
	public List<Employee> selectEmployee(int startIndex,int page, Integer id, String hireDate,String username,Integer statusId) {	
		String str="";
		if(id!=null){
			str += " and emp_id="+id;
		}
		if(hireDate!=null&&!"".equals(hireDate)){
			str += " and emp_hire_date > '" + hireDate+"'";
			
		}
		if(!"".equals(username)&&username!=null){
			str += " and emp_user like "+"'%"+username+"%'";
		}
		if(statusId!=null){
			str += " and emp_status_id = "+statusId;
		}
		str += " and emp_status_id not in (5)";
		str += " order by emp_id desc";
		String sql = "select top "+page+ "* from employee_information where emp_id not in(select top "+startIndex+" emp_id from employee_information where 1=1"+str+")"+str;
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
				em.setEmp_status_id(rs.getInt("emp_status_id"));
				em.setEmp_name(rs.getString("emp_name"));
				empList.add(em);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			cp.close(con);
		}

		return empList;
	}

	@Override
	public int selectEmpCount(Integer id, String hireDate,String username,Integer statusId) {
		String sql = "select count(*) from employee_information where 1=1";
		if(id!=null){
			sql += " and emp_id="+id;
		}
		if(hireDate!=null&&!"".equals(hireDate)){
			sql += " and emp_hire_date > '" + hireDate+"'";
		}
		if(!"".equals(username)&&username!=null ){
			sql += " and emp_user like "+"'%"+username+"%'";
		}
		if(statusId!=null){
			sql += " and emp_status_id = "+statusId;
		}
		sql += " and emp_status_id not in (5)";
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		try {
			int flag = (Integer) qr.query(sql,new ScalarHandler());
			return flag;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int motifyEmpByName(String name, String newPassword1){
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "update employee_information set emp_pwd = ? where emp_user = ?";
		int flag=-1;
		try {
			flag = qr.update(sql,newPassword1,name);		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public Employee getEmpById(int emp_id) {
		String sql = "select * from employee_information where emp_id="+emp_id+" and emp_status_id not in (5)";
		Connection con = cp.getConnection();
		Employee em = new Employee();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
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
				em.setEmp_status_id(rs.getInt("emp_status_id"));
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
	public int updateStatu(int emp_id, int statusid) {
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "update employee_information set emp_status_id = ? where emp_id = ?";
		int flag=-1;
		try {
			flag = qr.update(sql,statusid,emp_id);		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public int deleteEmpById(int emp_id) {
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "update employee_information set emp_status_id = 5 where emp_id = ?";
		int flag=-1;
		try {
			flag = qr.update(sql,emp_id);		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}



}
