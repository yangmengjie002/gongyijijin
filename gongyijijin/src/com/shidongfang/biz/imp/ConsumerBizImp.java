package com.shidongfang.biz.imp;

import java.util.List;

import com.shidongfang.biz.ConsumerBiz;
import com.shidongfang.dao.ConsumerDao;
import com.shidongfang.dao.imp.ConsumerDaoImp;

public class ConsumerBizImp implements ConsumerBiz{
	ConsumerDao cd=new ConsumerDaoImp();
	@Override
	public List findConsumerByUser_nameAndUser_pwd(String user_name,
			String user_pwd) {
		// TODO Auto-generated method stub
		return cd.findConsumerByUser_nameAndUser_pwd(user_name, user_pwd);
	}

}
