package com.jingbinbinzhu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jingbinbindeng.Dao.BaseDao;




import com.util.ConnPool;

public class RegisterDaoimp implements RegisterDao {
  private ConnPool con=new ConnPool();
	public int addRegister(Register reg) {
		String sql="insert into consumer values(?,?,?,?,?)";
		Object[] params= {reg.getUser_name(),reg.getUser_pass(),reg.getUser_phone(),reg.getUser_emal(),1};
		return BaseDao.executeUpdate(sql, params);
	}

	public Register findRegister(String user_name){
		 String sql="select * from consumer where user_name=?";
		 Object[]obj={user_name};
		 Connection  conn= con.getConnection();
		 Register reg=null;
		 try{
			 PreparedStatement prs=conn.prepareStatement(sql);
			 BaseDao.setParam(prs, obj);
			 ResultSet re=prs.executeQuery();
			 while(re.next()){
				 reg=new Register();
				  reg.setUser_name(re.getString("user_name"));
				  reg.setUser_pass(re.getString("user_pass"));
				  reg.setUser_phone(re.getString("user_phone"));
				  reg.setUser_emal(re.getString("user_emal"));
				  System.out.println(reg.getUser_name());
			 }
		 }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				con.close(conn);
			}
		return reg;
	}
}
