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
		return cd.findConsumerByUser_nameAndUser_pwd(user_name, user_pwd);
		/*List list=cd.findConsumerByUser_nameAndUser_pwd(user_name, user_pwd);//通过biz层，业务层调用dao层
		if(list.size()>0){
			return true;
		}else{
			return false;
		}*/
	}

}
