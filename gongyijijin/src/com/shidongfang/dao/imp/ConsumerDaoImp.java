package com.shidongfang.dao.imp;

import java.util.List;

import com.shidongfang.dao.ConsumerDao;
import com.shidongfang.util.BaseDao;

public class ConsumerDaoImp extends BaseDao implements ConsumerDao{
	/**
	 * 查询用户名密码
	 * 
	 * */
	@Override
	public List findConsumerByUser_nameAndUser_pwd(String user_name,
			String user_pwd) {
		
		String sql="select * from consumer where user_name=? and  user_pwd=?";
		Object[] params={user_name,user_pwd};
		return executeQuery(sql, params);
	}

}
