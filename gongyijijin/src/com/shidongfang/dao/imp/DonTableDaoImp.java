package com.shidongfang.dao.imp;

import java.util.List;
import java.util.Map;

import com.entity.DonTable;

import com.shidongfang.dao.DonTableDao;
import com.shidongfang.util.BaseDao;

/**
 * @描述 dao接口实现类
 * @作者
 * @公司
 * @时间 2017-6-20
 */
public class DonTableDaoImp extends BaseDao implements DonTableDao{
	/**
	 * 增加数据
	 * 向数据库添加一次捐款金额，与捐款时间
	 * 
	 * */    
	public boolean addDonTable(DonTable dt){
		  String sql="insert into don_table select d.user_money, b.board_exam_pro_id,d.user_oldmoney,c.user_id,d.time from don_table d,board_exam_pro_table b,consumer c where d.board_exam_pro_id=b.board_exam_pro_id And d.user_id=c.user_id";
		//String sql="insert into don_table (user_money,board_exam_pro_id,user_oldmoney,user_id,time) values(?,?,?,?,?)";
		Object[] params={dt.getUser_money(),dt.getBoard_exam_pro_id(),dt.getUser_oldmoney(),dt.getUser_id(),dt.getTime()};
		return executeUpdate(sql, params);
	}
	/**
	 * 删除数据
	 * 
	 * */
	@Override
	public void deleteDonTable(DonTable dt) {
		// TODO Auto-generated method stub
		
	}
	/**
	 * 修改数据
	 * 
	 * */
	@Override
	public void updateDonTable(DonTable dt) {
		// TODO Auto-generated method stub
		
	}
	/**
	 * 查询数据
	 * 
	 * */
	@Override
	public List<Map<String, Object>> select() {
		
		String sql="select * from don_table";
		return executeQuery(sql, null);
	}
	
	public static void main(String[] args) {
		List<Map<String, Object>> list = new DonTableDaoImp().select();
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).get("don_id"));
		}
	}
	@Override
	public void addDon(double user_money) {
		String sql="insert into don_table (user_money) values(?)";
		Object[] params={user_money};
		executeUpdate(sql, params);
	}
	
}
