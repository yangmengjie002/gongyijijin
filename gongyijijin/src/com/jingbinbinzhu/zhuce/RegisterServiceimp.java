package com.jingbinbinzhu.zhuce;


public class RegisterServiceimp  implements RegisterService{
	 RegisterDao regd=new RegisterDaoimp();
	@Override
	public int addRegister(Register reg) {
	int aaa=regd.addRegister(reg);
	 
		return aaa;
	}
	@Override
	public Register findRegister(String user_name) {
		
		return regd.findRegister(user_name);
	}

}
