package com.shidongfang.dao;

import java.util.List;

import com.entity.DonTable;

public interface DonTableDao {
	
	public int addAuth(DonTable dt);
	public int deleteAuth(DonTable dt);
	public int updateAuth(DonTable dt);
	public List<DonTable> select();
	
}
