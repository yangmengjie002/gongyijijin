package com.entity;

public class ProExamMoneyTable {
	private Integer pro_exam_money_id;
	
	private Integer money_app_id;
	private Integer emp_id;
	private Integer exam_status_id;
	private String pro_exam_money_info;
	private String pro_exam_pro_time;
	public Integer getPro_exam_money_id() {
		return pro_exam_money_id;
	}
	public void setPro_exam_money_id(Integer pro_exam_money_id) {
		this.pro_exam_money_id = pro_exam_money_id;
	}
	public String getPro_exam_pro_time() {
		return pro_exam_pro_time;
	}
	public void setPro_exam_pro_time(String pro_exam_pro_time) {
		this.pro_exam_pro_time = pro_exam_pro_time;
	}
	public Integer getMoney_app_id() {
		return money_app_id;
	}
	public void setMoney_app_id(Integer money_app_id) {
		this.money_app_id = money_app_id;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public Integer getExam_status_id() {
		return exam_status_id;
	}
	public void setExam_status_id(Integer exam_status_id) {
		this.exam_status_id = exam_status_id;
	}
	public String getPro_exam_money_info() {
		return pro_exam_money_info;
	}
	public void setPro_exam_money_info(String pro_exam_money_info) {
		this.pro_exam_money_info = pro_exam_money_info;
	}
}
