package com.jingbinbinzhu.deng;

import com.jingbinbinzhu.zhuce.Register;

public class qianserviceimp implements qianservice {
   private qianDao qiand=new qianDaoimp();
	@Override
	public Register findRegister(String user_name, String user_pass) {
		System.out.println("======tttttt====");
		return qiand.findRegister(user_name, user_pass);
	}

}
