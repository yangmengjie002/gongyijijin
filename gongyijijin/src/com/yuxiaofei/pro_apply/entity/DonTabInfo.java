package com.yuxiaofei.pro_apply.entity;

/**
 * @name	捐款表实体类
 * @author 74128
 * @
 * @
 * @
 */
public class DonTabInfo {
	private  Integer don_id;
	private int sum;
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	private Integer board_exam_pro_id;
	private double don_money;
	private Integer user_id;
	private String user_status;
	public Integer getDon_id() {
		return don_id;
	}
	public void setDon_id(Integer don_id) {
		this.don_id = don_id;
	}
	public Integer getBoard_exam_pro_id() {
		return board_exam_pro_id;
	}
	public void setBoard_exam_pro_id(Integer board_exam_pro_id) {
		this.board_exam_pro_id = board_exam_pro_id;
	}
	public double getDon_money() {
		return don_money;
	}
	public void setDon_money(double don_money) {
		this.don_money = don_money;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
}
