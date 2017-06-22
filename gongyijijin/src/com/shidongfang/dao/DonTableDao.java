package com.shidongfang.dao;

import java.util.List;
import java.util.Map;

import com.entity.DonTable;
/**
 * @描述 dao接口
 * @作者
 * @公司
 * @时间 2017-6-20
 */
public interface DonTableDao {
	/**
	 * 捐款表添加信息
	 * 
	 * */
	public boolean addDonTable(DonTable dt);//增加
	/**
	 * 
	 * 
	 * */
	public void addDon(double user_money);//添加捐款金额
	public void deleteDonTable(DonTable dt);//删除
	/**
	 * 
	 * 
	 * */
	public void updateDonTable(DonTable dt);//修改
	/**
	 * 查询捐款表内所有信息
	 * 
	 * */
	public List<Map<String, Object>> select();//查询
	
}
