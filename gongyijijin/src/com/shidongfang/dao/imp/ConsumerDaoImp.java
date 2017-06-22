package com.shidongfang.dao.imp;

import java.util.List;

import com.shidongfang.dao.ConsumerDao;
import com.util.BaseDao;

public class ConsumerDaoImp extends BaseDao implements ConsumerDao{

	@Override
	public List findConsumerByUser_nameAndUser_pwd(String user_name,
			String user_pwd) {
		String sql="select * from consumer where user_name=? and  user_pwd=?";
		Object[] params={user_name,user_pwd};
		return BaseDao.executeQuery(sql, params)
	}

}
