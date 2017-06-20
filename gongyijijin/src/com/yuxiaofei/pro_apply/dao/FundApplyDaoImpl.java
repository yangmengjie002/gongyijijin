package com.yuxiaofei.pro_apply.dao;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jingbinbindeng.Dao.BaseDao;
import com.yuxiaofei.pro_apply.entity.BigProAppMoneyInfo;
import com.yuxiaofei.pro_apply.entity.BoardExamProInfo;
import com.yuxiaofei.pro_apply.entity.DonTabInfo;

/**
 * @name
 * @author 74128
 * @
 * @ addApplyFund() 给 fund_applilcation表中插入数据
 * @ getInfo() 获取某个项目的捐款总额
 * @ getUserDaoProName()
 */
public class FundApplyDaoImpl {
	public void addApplyFund(){
		BigProAppMoneyInfo pai=new BigProAppMoneyInfo();
		String sql="insert into fund_application values(?,?,?,?)";
		System.out.println(1);
		Object[] pstm=new Object[]{pai.getPro_id(),pai.getUser_id(),pai.getMoney_app_num(),pai.getMoney_app_reason()};
		System.out.println(1);
		 BaseDao.executeUpdate(sql, pstm);		
	}
	public List<DonTabInfo> getInfo(){
		DonTabInfo bti=new DonTabInfo();
		List<DonTabInfo> list=new ArrayList<DonTabInfo>();
		String sql="select sum(don_money) from don_table where board_exam_id=?";
		Object[] params=new Object[]{bti.getBoard_exam_pro_id()};
		ResultSet rs=BaseDao.executeUpdate(sql, params);
		try {
			rs.next();
			bti.setBoard_exam_pro_id(rs.getInt(1));
			list.add(bti);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<BoardExamProInfo> getUserDaoProName(){
		BigProAppMoneyInfo bpam =new BigProAppMoneyInfo();
		List<BoardExamProInfo> list=new ArrayList<BoardExamProInfo>();
		String sql="select pat.pro_name,pat.pro_id  from pro_exam_pro_table pept," +
				"board_exam_pro_table bept,project_application_table pat " +
				"where pept.pro_exam_pro_id=bept.pro_exam_pro_id " +
				"and pept.pro_id =pat.pro_id and pat.user_id=?";
		Object[] params= new Object[]{};
		ResultSet rs=BaseDao.executeQuery(sql, params);
		try {
			BoardExamProInfo bepi=new BoardExamProInfo();
			rs.next(); 
			bepi.setProname(rs.getString(1));
			list.add(bepi);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
		
		
	
}
