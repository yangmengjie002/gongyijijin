package com.yangmengjie.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;



import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;



import com.entity.Employee;
import com.entity.FunctionEntity;
import com.entity.RoleEntity;
import com.util.BaseAction;
import com.util.EmployeeBean;
import com.yangmengjie.dao.dao.FunctionDao;
import com.yangmengjie.dao.dao.RoleDao;
import com.yangmengjie.dao.daoImp.FunctionDaoImpl;
import com.yangmengjie.dao.daoImp.RoleDaoImpl;
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
				this.getSession().setAttribute("name", em.getEmp_user());
				this.getSession().setAttribute("pwd", em.getEmp_pwd());
				RoleDao rd = new RoleDaoImpl();
				List<RoleEntity> re = rd.selectRoleById(emp.getEmp_id());
				FunctionDao fd = new FunctionDaoImpl();
				ArrayList list = new ArrayList(); 
				for(int i=0;i<re.size();i++){
					List<FunctionEntity> funList = fd.selectFunctionByRoleName(re.get(i).getRoleName());
					list.add(funList);
				}
				
				List<FunctionEntity> allList = fd.selectAllFunction();
				this.getSession().setAttribute("funList", list);
				this.getSession().setAttribute("allList", allList);
				
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
	private Integer  emp_id;
	private Integer emp_status_id;
	private String emp_hire_date;
	private String emp_user;
	private Integer pageSize;
	private Integer currentPage;
	/**
	 * 分页查询用户动作。
	 * @return
	 */
	public String selectEmp(){
		
		EmployeeBean eb = es.selectEmployee(pageSize,currentPage,emp_id,emp_hire_date,emp_user,emp_status_id);
		System.out.println(eb);
		this.getRequest().setAttribute("eb", eb);
		return "addEmp";
	}
	
	public String selectEmp1(){	
		EmployeeBean eb = es.selectEmployee(pageSize,currentPage,emp_id,emp_hire_date,emp_user,emp_status_id);
		String s = JSONObject.fromObject(eb).toString();
		try {
			PrintWriter out = this.getResponse().getWriter();
			out.print(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(s);
		return null;
	}
	
	public EmpService getEs() {
		return es;
	}

	public void setEs(EmpService es) {
		this.es = es;
	}
	public Integer getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}

	public Integer getEmp_status_id() {
		return emp_status_id;
	}

	public void setEmp_status_id(Integer emp_status_id) {
		this.emp_status_id = emp_status_id;
	}

	public String getEmp_hire_date() {
		return emp_hire_date;
	}

	public void setEmp_hire_date(String emp_hire_date) {
		this.emp_hire_date = emp_hire_date;
	}

	public String getEmp_user() {
		return emp_user;
	}

	public void setEmp_user(String emp_user) {
		this.emp_user = emp_user;
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
	

	private String oldPassword;
	private String newPassword1;
	private String newPassword2;
	/**
	 * 修改用户密码。
	 * @return
	 */
	public String motifyEmPwd(){
		System.out.println(newPassword1);
		if(!newPassword1.equals(newPassword2)){
			this.getRequest().setAttribute("msg1", "两次密码不一致");
			return "motifyEmPwd";
		}else{
			String pwd = (String) this.getSession().getAttribute("pwd");
			if(!pwd.equals(oldPassword)){
				this.getRequest().setAttribute("msg2", "原密码错误");
				return "motifyEmPwd";
			}
			System.out.println(oldPassword);
			String name = (String) this.getSession().getAttribute("name");
			int flag = es.motifyEmpByName(name,newPassword1);
			if(flag>0){
				this.getRequest().setAttribute("msg3", "修改成功，调到主页<a href='admin/employee/changeEmployee.jsp'>返回</a>");
				this.getSession().setAttribute("pwd", newPassword1);
				System.out.println(this.getSession().getAttribute("pwd"));
				return "motifyEmPwd";
			}else{
				this.getRequest().setAttribute("msg3", "插入错误");
				return "motifyEmPwd";
			}
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
	
	public void motifyEmp(){
		
	}
	
	/**
	 * 退出后台系统。
	 * @return
	 */
	public String empDistory(){
		this.getSession().invalidate();
		return "entryBack_error";
	}
	


}
