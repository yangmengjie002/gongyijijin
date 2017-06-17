package com.shidongfang.dao;

import java.util.List;

public interface ConsumerDao {
	List findConsumerByUser_nameAndUser_pwd(String user_name,String user_pwd);
}
