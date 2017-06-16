package com.yangmengjie.dao.daoImp;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

import com.util.ConnPool;
import com.yangmengjie.dao.dao.PcdDao;

public class PcdDaoImp implements PcdDao {

	@Override
	public List getProvince() {
		QueryRunner query = new QueryRunner(ConnPool.getBds());
		List<Object> proList = new ArrayList();
				
		try {
			proList=query.query("select * from S_Province", new ColumnListHandler(2));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return proList;
	}

	@Override
	public List getCity(String province) {
		QueryRunner query = new QueryRunner(ConnPool.getBds());
		List<Object> proList = new ArrayList();
		
		try {
			proList=query.query("select sc.cityName from S_Province s,S_City sc where s.ProvinceID = sc.ProvinceID and s.ProvinceName='"+province+"'", new ColumnListHandler(1));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return proList;
	}

	@Override
	public List getDistr(String city) {
		QueryRunner query = new QueryRunner(ConnPool.getBds());
		List<Object> proList = new ArrayList();
		
		try {
			proList=query.query("select d.DistrictName from S_District d,S_City sc where d.cityID = sc.cityID and sc.cityName='"+city+"'", new ColumnListHandler(1));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return proList;
	}

}
