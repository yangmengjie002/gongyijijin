package com.shidongfang.dao.imp;

import java.util.List;
import java.util.Map;

import com.entity.DonTable;

import com.shidongfang.dao.DonTableDao;
import com.shidongfang.util.BaseDao;

/**
 * @描述 dao接口实现类
 * @作者
 * @公司
 * @时间 2017-6-20
 */
public class DonTableDaoImp extends BaseDao implements DonTableDao{
	/**
	 * 增加数据
	 * 向数据库添加一次捐款金额，与捐款时间
	 * 
	 * */
	public boolean addDonTable(DonTable dt){
		String sql="insert into don_table values(?,?)";
		Object[] params={dt.getUser_money(),dt.getTime()};
		return executeUpdate(sql, params);
	}
	/**
	 * 删除数据
	 * 
	 * */
	@Override
	public void deleteDonTable(DonTable dt) {
		// TODO Auto-generated method stub
		
	}
	/**
	 * 修改数据
	 * 
	 * */
	@Override
	public void updateDonTable(DonTable dt) {
		// TODO Auto-generated method stub
		
	}
	/**
	 * 查询数据
	 * 
	 * */
	@Override
	public List<Map<String, Object>> select() {
		String sql="select * from don_table";
		return executeQuery(sql, null);
	}
	
	
}
