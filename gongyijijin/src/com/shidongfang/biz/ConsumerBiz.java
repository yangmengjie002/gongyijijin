package com.shidongfang.biz;

import java.util.List;

public interface ConsumerBiz {
	List findConsumerByUser_nameAndUser_pwd(String user_name,String user_pwd);
}
