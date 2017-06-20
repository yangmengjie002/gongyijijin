package com.entity;
/**
 * 员工信息类
 * @author yang
 *
 */
public class Employee {
	private Integer emp_id;//员工ID
	private String emp_user;//员工用户名
	private String emp_pwd;//员工 密码
	private String emp_name;//员工真实姓名
	private String emp_phone;//员工电话
	private String emp_id_num;//员工身份证号。
	private String emp_hire_date;//员工受雇日期
	private String emp_leave_date;//员工离职日期
	private String emp_add;//员工家庭住址
	private Integer emp_status_id;//员工状态
	
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_user() {
		return emp_user;
	}
	public void setEmp_user(String emp_user) {
		this.emp_user = emp_user;
	}
	public String getEmp_pwd() {
		return emp_pwd;
	}
	public void setEmp_pwd(String emp_pwd) {
		this.emp_pwd = emp_pwd;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_phone() {
		return emp_phone;
	}
	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getEmp_id_num() {
		return emp_id_num;
	}
	public void setEmp_id_num(String emp_id_num) {
		this.emp_id_num = emp_id_num;
	}
	public String getEmp_hire_date() {
		return emp_hire_date;
	}
	public void setEmp_hire_date(String emp_hire_date) {
		this.emp_hire_date = emp_hire_date;
	}
	public String getEmp_leave_date() {
		return emp_leave_date;
	}
	public void setEmp_leave_date(String emp_leave_date) {
		this.emp_leave_date = emp_leave_date;
	}
	public String getEmp_add() {
		return emp_add;
	}
	public void setEmp_add(String emp_add) {
		this.emp_add = emp_add;
	}
	public Integer getEmp_status_id() {
		return emp_status_id;
	}
	public void setEmp_status_id(Integer emp_status_id) {
		this.emp_status_id = emp_status_id;
	}
	
}
