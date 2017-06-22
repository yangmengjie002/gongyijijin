package com.yuxiaofei.pro_apply.entity;

/**
 * @name	二次审核相关实体表
 * @author 74128
 * 2017-6-20下午3:23:31
 */
public class SecondCheck {
	private Integer moneyId;//该次审核id
	private Integer empId;//二次审核员工编号
	private Integer statusId;//审核意见
	private String applyReason;//申请原因
	private double money;//申请的钱数
	private String moneyInfo;//审查信息
	private String proName;//项目名称
	private Integer proId;//项目id
	private Integer proExeId;//一次审核id;
	private String firstCheckEmp;//第一次审查人
	public String getApplyReason() {
		return applyReason;
	}
	public void setApplyReason(String applyReason) {
		this.applyReason = applyReason;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	
	public Integer getProExeId() {
		return proExeId;
	}
	public void setProExeId(Integer proExeId) {
		this.proExeId = proExeId;
	}

	public Integer getProId() {
		return proId;
	}
	public void setProId(Integer proId) {
		this.proId = proId;
	}
	public Integer getMoneyId() {
		return moneyId;
	}
	public void setMoneyId(Integer moneyId) {
		this.moneyId = moneyId;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public String getMoneyInfo() {
		return moneyInfo;
	}
	public void setMoneyInfo(String moneyInfo) {
		this.moneyInfo = moneyInfo;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getFirstCheckEmp() {
		return firstCheckEmp;
	}
	public void setFirstCheckEmp(String firstCheckEmp) {
		this.firstCheckEmp = firstCheckEmp;
	}
}
