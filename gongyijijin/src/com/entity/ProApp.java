package com.entity;

/**
 * 
 * @author xiaoming
 * 项目申请表实体类
 *
 */


public class ProApp {
	private int user_id;    //用户id
	private String pro_name;   //项目名称
	private int pro_monry;   //申请金额
	private int pro_type_id;   //项目类型id
	private String pro_begin_time;   //项目开始时间
	private int status_id;   //项目状态
	private String pro_appl_reason;   //申请原因
	private String pro_end_time;   //项目结束时间
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_monry() {
		return pro_monry;
	}
	public void setPro_monry(int pro_monry) {
		this.pro_monry = pro_monry;
	}
	public int getPro_type_id() {
		return pro_type_id;
	}
	public void setPro_type_id(int pro_type_id) {
		this.pro_type_id = pro_type_id;
	}
	public String getPro_begin_time() {
		return pro_begin_time;
	}
	public void setPro_begin_time(String pro_begin_time) {
		this.pro_begin_time = pro_begin_time;
	}
	public int getStatus_id() {
		return status_id;
	}
	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	public String getPro_appl_reason() {
		return pro_appl_reason;
	}
	public void setPro_appl_reason(String pro_appl_reason) {
		this.pro_appl_reason = pro_appl_reason;
	}
	public String getPro_end_time() {
		return pro_end_time;
	}
	public void setPro_end_time(String pro_end_time) {
		this.pro_end_time = pro_end_time;
	}
	
}
