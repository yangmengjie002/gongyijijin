package com.shidongfang.dao.imp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.DonTable;

import com.shidongfang.dao.DonTableDao;
import com.util.BaseDao;

public class DonTableDaoImp implements DonTableDao{
	
	@Override
	public int addAuth(DonTable dt) {
		String sql="insert into don_table values(?,?,?,?,?,?)";
		Object[] params=new Object[]{dt.getDon_id(),dt.getUser_money(),dt.getDon_exam_pro_id(),dt.getUser_oldmoney(),dt.getUser_id(),dt.getTime()};
		return BaseDao.executeUpdate(sql, params);
	}

	@Override
	public int deleteAuth(DonTable dt) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAuth(DonTable dt) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<DonTable> select() {
		String sql="select * from don_table";
		List<DonTable> list=new ArrayList<DonTable>();
		ResultSet rs=null;
		rs=BaseDao.executeQuery(sql, null);
		try {
			while(rs.next()){
				DonTable dt=new DonTable();
				dt.setDon_id(rs.getInt(1));
				dt.setUser_money(rs.getFloat(2));
				dt.setDon_exam_pro_id(rs.getInt(3));
				dt.setUser_oldmoney(rs.getInt(5));
				dt.setTime(rs.getString(6));
				list.add(dt);
			
			}
			//System.out.println("dt");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
