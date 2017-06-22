package com.jingbinbinzhu.deng;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jingbinbinzhu.Dao.BaseDao;
import com.jingbinbinzhu.zhuce.Register;

import com.util.ConnPool;

public class qianDaoimp implements qianDao{
	private ConnPool cnp=new ConnPool();

	@Override
	public Register findRegister(String user_name, String user_pass) {
	String sql="select *from consumer where user_name=? and user_pwd=?" ;
	System.out.println("=========qqqqqqqqq======");
	  Object []	obj={user_name ,user_pass};
	  Connection con=cnp.getConnection();
	  System.out.println("=======wwwwwwwww========");
	  Register reg=null;
	  try {
		PreparedStatement prs=con.prepareStatement(sql);
		BaseDao.setParam(prs, obj);
		ResultSet res= prs.executeQuery();
		while(res.next()){
			reg=new Register();
			reg.setUser_name(res.getString("user_name"));
			reg.setUser_pass(res.getString("user_pass"));
			reg.setUser_phone(res.getString("user_phone"));
			reg.setUser_emal(res.getString("user_emal"));
			
		}
	} catch (Exception e) {
		// TODO: handle exception
	}finally{
		cnp.close(con);
	}
	return reg;
	}

}
