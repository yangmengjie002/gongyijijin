package com.shidongfang.biz.imp;

import java.util.List;
import java.util.Map;

import com.entity.DonTable;
import com.shidongfang.biz.DonTableBiz;
import com.shidongfang.dao.DonTableDao;
import com.shidongfang.dao.imp.DonTableDaoImp;

/**
 * @描述 用户业务接口实现类
 * @作者
 * @公司
 * @时间 2017-6-20
 */
public class DonTableBizImp implements DonTableBiz{
	DonTableDao dd=new DonTableDaoImp();
	
	@Override
	public void addDonTable(DonTable dt) {  //增加
		
	 dd.addDonTable(dt);
	}

	@Override
	public void deleteDonTable(DonTable dt) { //删除
		dd.updateDonTable(dt);
	}

	@Override
	public void updateDonTable(DonTable dt) { //修改
		dd.updateDonTable(dt);
	}

	@Override
	public List<Map<String, Object>> select() { //查询
		
		return dd.select();
	}

	@Override
	public void addDon(double user_money) {
		dd.addDon(user_money);
		
	}

	
}
