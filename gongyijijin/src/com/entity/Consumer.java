package com.entity;

/**
 * @描述 用户实体类
 * @作者
 * @公司
 * @时间 2017-6-17
 */
public class Consumer {
	private Integer user_id;//用户ID
	private String user_name;//用户名
	private String user_pwd;//密码
	private String user_phone;//电话
	private String user_email;//邮箱
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
}
