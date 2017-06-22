package com.yuxiaofei.pro_apply.entity;

/**
 * @name	一次审核相关实体类
 * @author 74128
 * @papam	
 * @papam
 * @return
 * 2017-6-20下午3:25:22
 */
public class FirstCheck {
	private Integer moneyAppId;//申请表编号
	private Integer emp_id;//员工编号
	private Integer checkId;//审核资金id
	private String proName;//项目名称
	private String userName;//资金申请人
	private double money;//申请金额数
	private String reason;//审核原因
	private Integer checkStatusId;//审核状态
	private double agreeMoney;//批准金额数
	public Integer getCheckId() {
		return checkId;
	}
	public void setCheckId(Integer checkId) {
		this.checkId = checkId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Integer getCheckStatusId() {
		return checkStatusId;
	}
	public void setCheckStatusId(Integer checkStatusId) {
		this.checkStatusId = checkStatusId;
	}
	public double getAgreeMoney() {
		return agreeMoney;
	}
	public void setAgreeMoney(double agreeMoney) {
		this.agreeMoney = agreeMoney;
	}
	public Integer getMoneyAppId() {
		return moneyAppId;
	}
	public void setMoneyAppId(Integer moneyAppId) {
		this.moneyAppId = moneyAppId;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
}
