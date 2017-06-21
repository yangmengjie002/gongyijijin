package com.yangmengjie.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.entity.Employee;
import com.entity.EmployeeBean;
import com.util.BaseAction;
import com.yangmengjie.service.service.EmpService;
import com.yangmengjie.service.serviceImp.EmpServiceImp;
/**
 * 用户动作类
 * @author yang
 *
 */
public class EmpAction extends BaseAction{
	private Employee em;
	private EmpService es = new EmpServiceImp();
	/**
	 * 用户登录动作
	 * @return
	 */
	public String login(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String role = (String) request.getSession().getAttribute("role");
		String code = (String) request.getSession().getAttribute("code");
		String code1 = request.getParameter("code");
		if(!code.equalsIgnoreCase(code1)){
			request.setAttribute("msg", "验证码错误，返回登录页面");
			return "entryBack_error";
		}else{
			Employee emp = es.findEmployee(em.getEmp_user(), em.getEmp_pwd());
			if(emp!=null){
				this.getSession().setAttribute("role", em.getEmp_user());
				this.getSession().setAttribute("pwd", em.getEmp_pwd());
				return SUCCESS;
			}else{
				this.getRequest().setAttribute("msg", "用户名密码错误或用户不存在");
				return "entryBack_error";
			}
		}
		
	}
	
	public Employee getEm() {
		return em;
	}
	public void setEm(Employee em) {
		this.em = em;
	}
	
	
	/**
	 * 添加用户动作。
	 * @return
	 */
	public String addEmp(){
		int flag = es.addEmployee(em);
		if(flag<0){
			this.getRequest().setAttribute("msg", "添加用户错误");
		}
		return "addEmp";
	}
	
	
	private Integer id;
	private Date hireDate;
	private String username;
	private Integer statusId;
	private Integer pageSize;
	private Integer currentPage;
	/**
	 * 分页查询用户动作。
	 * @return
	 */
	public String selectEmp(){
		System.out.println(hireDate);
		System.out.println(pageSize +";"+ currentPage);
		EmployeeBean eb = es.selectEmployee(pageSize,currentPage,id,hireDate, username,statusId);
		System.out.println(eb);
		this.getRequest().setAttribute("eb", eb);
		return "addEmp";
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	
	private String oldPassword;
	private String newPassword1;
	private String newPassword2;
	/**
	 * 修改用户密码。
	 * @return
	 */
	public String motifyEmPwd(){
		System.out.println(newPassword1);
		System.out.println("mmmmm");
		if(!newPassword1.equals(newPassword2)){
			this.getRequest().setAttribute("msg1", "两次密码不一致");
			return "motifyEmPwd";
		}else{
			String pwd = (String) this.getSession().getAttribute("pwd");
			if(!pwd.equals(oldPassword)){
				this.getRequest().setAttribute("msg2", "原密码错误");
				return "motifyEmPwd";
			}
			this.getRequest().setAttribute("msg3", "修改成功，调到主页<a href='admin/employee/changeEmployee.jsp'>返回</a>");
			this.getSession().setAttribute("pwd", newPassword1);
			return "motifyEmPwd";
		}
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword1() {
		return newPassword1;
	}

	public void setNewPassword1(String newPassword1) {
		this.newPassword1 = newPassword1;
	}

	public String getNewPassword2() {
		return newPassword2;
	}

	public void setNewPassword2(String newPassword2) {
		this.newPassword2 = newPassword2;
	}
	

}
