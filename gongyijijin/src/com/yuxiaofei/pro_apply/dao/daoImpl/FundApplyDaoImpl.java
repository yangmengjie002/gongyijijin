package com.yuxiaofei.pro_apply.dao.daoImpl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.BaseDao;
import com.util.ConnPool;
import com.yuxiaofei.pro_apply.entity.BigProAppMoneyInfo;
import com.yuxiaofei.pro_apply.entity.DonTabInfo;
import com.yuxiaofei.pro_apply.entity.ProApp;
import com.yuxiaofei.pro_apply.entity.proNameFind;

/**
 * @name
 * @author 74128
 * @
 * @ addApplyFund() 给 fund_applilcation表中插入数据
 * @ getInfo() 获取某个人所申请的所有的项目
 * @ getMoney()获取某个项目的捐款总额
 * @ getUserDaoProName()
 * @需要获得 user_id
 */
public class FundApplyDaoImpl {
	private ConnPool cp=new ConnPool();
	public  int addCheckProMon(BigProAppMoneyInfo pai){
		String sql="insert into pro_exam_money_table(money_app_reason)  values(?) ";
		Object[] pstm=new Object[]{ pai.getMoney_app_reason()};
		return BaseDao.executeUpdate(sql,pstm);
	}
	public int addApplyFund(BigProAppMoneyInfo pai){
		String sql="insert into fund_application values(?,?,?,?)";	
		Object[] pstm=new Object[]{pai.getPro_id(),pai.getUser_id(),pai.getMoney_app_num(),pai.getMoney_app_reason()};
		return BaseDao.executeUpdate(sql, pstm);		
	}

		
	
	public  List<proNameFind> getInfo(ProApp pa){	
		ResultSet rs=null;
		List<proNameFind> lis=new ArrayList<proNameFind>();
		String sql="select pro_id,pro_name from project_application where user_id=?";
		Connection con=cp.getConnection();
		try {	
			PreparedStatement pstm=con.prepareStatement(sql);	

			pstm.setInt(1, pa.getUser_id());	
			rs=pstm.executeQuery();			
			
			while(rs.next()){	
			proNameFind pnf=new proNameFind();	
			pnf.setPro_id(rs.getInt(1));
			pnf.setPro_name(rs.getString(2));
			lis.add(pnf);	
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		finally{
			cp.close(con);
		}
		return lis;
	} 
	//未测试
	public List<DonTabInfo>getMoney(ProApp pa){
		ResultSet rs=null;
		List<DonTabInfo> lis =new ArrayList<DonTabInfo>();
		String sql="select sum(don_table.don_money) from don_table dt ," +
				"board_exam_pro_table bept, project_application paat" +
				" where dt.board_exam_pro_id=bept.board_exam_pro_id and" +
				" bept.pro_exam_pro_id =paat.pro_id and paat.pro_id =?";
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
	//测试类
	public static void main(String[] args) {
		ProApp pa=new ProApp();	
		FundApplyDaoImpl ad=new FundApplyDaoImpl();	
	
		pa.setUser_id(3);
		
		List <proNameFind>lis=ad.getInfo(pa);
		System.out.print(lis.size());
		for (int i = 0; i < lis.size(); i++) {
		
			System.out.println(lis.get(i).getPro_name()+"::::"+lis.get(i).getPro_id());
		}
		
	}
	
}
	
		
		
	

