package com.shidongfang.dao;

import com.entity.DonTable;
import com.util.BaseDao;
import com.util.ConnPool;

public class DonTableDaoImp extends BaseDao{
	private ConnPool cp=new ConnPool();
	
	public int addDonTable(DonTable dt){
		String sql="insert into don_table values(?,?,?,?,?,?)";
		Object[] obj=new Object[] {dt.getDon_id(),dt.getUser_money(),dt.getDon_exam_pro_id(),dt.getUser_oldmoney(),dt.getUser_id(),dt.getTime()};
		return BaseDao.executeUpdate(sql, obj);
	}
	
	
}
