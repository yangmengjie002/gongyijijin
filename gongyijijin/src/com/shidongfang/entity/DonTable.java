package shidongfang.entity;

import java.sql.Date;

/**
 * @描述 用户捐款信息类
 * @作者
 * @公司
 * @时间 2017-6-15
 */
public class DonTable {
	private Integer don_id;//捐款次数
	private double user_money;//捐款金额
	private Integer don_exam_pro_id;//项目ID
	private double user_oldmoney;//已捐款金额
	private Integer user_id;//用户ID
	private String time;//捐款时间
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
