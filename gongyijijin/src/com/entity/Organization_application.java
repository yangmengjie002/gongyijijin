package com.entity;


/**
 * 
 * @author xiaoming
 * 机构认证实体类
 *
 */

public class Organization_application {
	private String  org_name; //机构名称
	private String  org_pho;  //机构电话	
	private String	org_add; //机构地址
	private String	org_set_time; //机构注册时间
	private String  org_person; //机构负责人
	private String  org_idNo; //机构负责人身份证号

	public String getOrg_name() {
		return org_name;
	}
	public void setOrg_name(String org_name) {
		this.org_name = org_name;
	}
	public String getOrg_pho() {
		return org_pho;
	}
	public void setOrg_pho(String org_pho) {
		this.org_pho = org_pho;
	}
	public String getOrg_add() {
		return org_add;
	}
	public void setOrg_add(String org_add) {
		this.org_add = org_add;
	}
	public String getOrg_set_time() {
		return org_set_time;
	}
	public void setOrg_set_time(String org_set_time) {
		this.org_set_time = org_set_time;
	}
	public String getOrg_person() {
		return org_person;
	}
	public void setOrg_person(String org_person) {
		this.org_person = org_person;
	}
	public String getOrg_idNo() {
		return org_idNo;
	}
	public void setOrg_idNo(String org_idNo) {
		this.org_idNo = org_idNo;
	}
	
}
