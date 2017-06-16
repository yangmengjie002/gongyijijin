package com.yuxiaofei.pro_apply.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnPool;
import com.yuxiaofei.pro_apply.entity.DonTabInfo;
import com.yuxiaofei.pro_apply.entity.ProApp;

public class FirstCheckImpl {
	ConnPool cp=new ConnPool();
	public List<DonTabInfo>getMoney(ProApp pa){
		ResultSet rs=null;
		List<DonTabInfo> lis =new ArrayList<DonTabInfo>();
		String sql="select emp_name, pro_name ,pro_money ";			
		Connection con=cp.getConnection();	
		try {
			PreparedStatement pstm=con.prepareStatement(sql);
			
			pstm.setInt(1, pa.getPro_id());	
			rs=pstm.executeQuery();	
			rs.next();
			DonTabInfo bt=new DonTabInfo();
			bt.setSum(rs.getInt(1));
			lis.add(bt);
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			cp.close();
		}
		return lis;		
	}
	
}
