package com.yangmengjie.service.serviceImp;

import java.util.List;

import com.yangmengjie.dao.dao.PcdDao;
import com.yangmengjie.dao.daoImp.PcdDaoImp;
import com.yangmengjie.service.service.PcdService;

public class PcdServiceImp implements PcdService {
	private PcdDao pd = new PcdDaoImp();
	@Override
	public List<String> getProvince() {
		List<String> list= pd.getProvince();
		return list;
	}
	@Override
	public List<String> getCity(String province) {
		List<String> list= pd.getCity(province);
		return list;
	}
	@Override
	public List<String> getDistr(String city) {
		List<String> list= pd.getDistr(city);
		return list;
	}

}
