package com.shidongfang.biz;

import java.util.List;
import java.util.Map;

import com.entity.DonTable;
/**
 * @描述 用户业务接口
 * @作者
 * @公司
 * @时间 2017-6-20
 */
public interface DonTableBiz {
	/**
	 * 增删改查
	 * 
	 * */
	public void addDonTable(DonTable dt);//增加
	public void deleteDonTable(DonTable dt);//删除
	public void updateDonTable(DonTable dt);//修改
	public List<Map<String, Object>> select();//查询
	
}
