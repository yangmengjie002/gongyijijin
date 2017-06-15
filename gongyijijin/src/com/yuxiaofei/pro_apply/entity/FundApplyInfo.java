package com.yuxiaofei.pro_apply.entity;

import java.io.File;
import java.sql.Date;

/*
 * @描述  大型项目资金申请实体类
 * @Author 余晓飞
 * @pro_name 所申请的项目名称
 * @pro_money 所申请的金额数
 * @pro_begin_time 申请的时间
 * @pro_appl_reason 申请原因
 * @filename 附属文件名称
 * @proId 所要申请的项目的id
 * @userId 用户id
 */
public class FundApplyInfo {
	private String pro_name;
	private String pro_money;
	private Date pro_begin_time;
	private String pro_appl_reason;
	private File fileName;
	private Integer proId;
	private Integer userId;
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_money() {
		return pro_money;
	}
	public void setPro_money(String pro_money) {
		this.pro_money = pro_money;
	}
	public Date getPro_begin_time() {
		return pro_begin_time;
	}
	public void setPro_begin_time(Date pro_begin_time) {
		this.pro_begin_time = pro_begin_time;
	}
	public String getPro_appl_reason() {
		return pro_appl_reason;
	}
	public void setPro_appl_reason(String pro_appl_reason) {
		this.pro_appl_reason = pro_appl_reason;
	}
	public File getFileName() {
		return fileName;
	}
	public void setFileName(File fileName) {
		this.fileName = fileName;
	}
	public Integer getProId() {
		return proId;
	}
	public void setProId(Integer proId) {
		this.proId = proId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	
}
