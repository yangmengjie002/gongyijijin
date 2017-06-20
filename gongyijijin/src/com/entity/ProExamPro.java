package com.entity;

public class ProExamPro {
	private Integer pro_id;
	private Integer emp_id;
	private Integer exam_status_id;
	private String pro_exam_pro_time;
	private String pro_exam_pro_info;
	public Integer getPro_id() {
		return pro_id;
	}
	public void setPro_id(Integer pro_id) {
		this.pro_id = pro_id;
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
	public String getPro_exam_pro_time() {
		return pro_exam_pro_time;
	}
	public void setPro_exam_pro_time(String pro_exam_pro_time) {
		this.pro_exam_pro_time = pro_exam_pro_time;
	}
	public String getPro_exam_pro_info() {
		return pro_exam_pro_info;
	}
	public void setPro_exam_pro_info(String pro_exam_pro_info) {
		this.pro_exam_pro_info = pro_exam_pro_info;
	}
}
