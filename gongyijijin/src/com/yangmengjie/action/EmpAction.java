package com.yangmengjie.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.entity.Employee;
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
	private String hireDate;
	private String username;
	private Integer statusId;
	/**
	 * 查询用户动作。
	 * @return
	 */
	public String selectEmp(){
		System.out.println(id);
		System.out.println(hireDate);
		
		List<Employee> empList = es.selectEmployee(id,hireDate, username,statusId);
		
		this.getRequest().setAttribute("list", empList);
		System.out.println(empList);
		return "addEmp";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getHireDate() {
		return hireDate;
	}
	public void setHireDate(String hireDate) {
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
	
	

}
