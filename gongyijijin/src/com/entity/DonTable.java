package com.entity;

public class DonTable {
	private Integer don_id;
	private double user_money;
	private Integer don_exam_pro_id;
	private double user_oldmoney;
	private Integer user_id;
	private String time;
	public Integer getDon_id() {
		return don_id;
	}
	public void setDon_id(Integer don_id) {
		this.don_id = don_id;
	}
	public double getUser_money() {
		return user_money;
	}
	public void setUser_money(double user_money) {
		this.user_money = user_money;
	}
	public Integer getDon_exam_pro_id() {
		return don_exam_pro_id;
	}
	public void setDon_exam_pro_id(Integer don_exam_pro_id) {
		this.don_exam_pro_id = don_exam_pro_id;
	}
	public double getUser_oldmoney() {
		return user_oldmoney;
	}
	public void setUser_oldmoney(double user_oldmoney) {
		this.user_oldmoney = user_oldmoney;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}
