package com.yuxiaofei.pro_apply.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.ProExamMoneyTable;
import com.util.BaseDao;
import com.util.ConnPool;
import com.yuxiaofei.pro_apply.entity.BigProAppMoneyInfo;
import com.yuxiaofei.pro_apply.entity.DonTabInfo;
import com.yuxiaofei.pro_apply.entity.ProApp;

/**
 * @name
 * @author 74128
 * @papam addApplyFund()更新时间，状态以及提示信息
 * @papam
 * @return
 * 2017-6-16下午8:31:10
 */
public class FirstCheckImpl {
	ConnPool cp=new ConnPool();
	public int addApplyFund(ProExamMoneyTable pt){
		String sql="update project_application set pro_exam_pro_time=? ,exam_status_id =?,pro_exam_money_info=? where pro_exam_money_id=?";			
		Object[] pstm=new Object[]{pt.getPro_exam_pro_time(),pt.getExam_status_id(),pt.getPro_exam_money_info(),pt.getPro_exam_money_id()};
		return BaseDao.executeUpdate(sql, pstm);		
	}
	
	
	public int update(){
		String sql="";
		Object[] pstm= new Object[]{};
		return BaseDao.executeUpdate(sql, pstm);
	}
	public List<DonTabInfo>getMoney(ProApp pa){
		ResultSet rs=null;
		List<DonTabInfo> lis =new ArrayList<DonTabInfo>();
		String sql="select emp_name, pro_name ,pro_money ";
		String sql2="select emp_";
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
			cp.close(con);
		}
		return lis;		
	}
	
}
