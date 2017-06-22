package com.yuxiaofei.pro_apply.dao.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.util.ConnPool;
import com.yuxiaofei.pro_apply.dao.baseDao.BaseDao;
import com.yuxiaofei.pro_apply.dao1.FDao;
import com.yuxiaofei.pro_apply.entity.FirstCheck;

public class FDaoImpl extends BaseDao implements FDao {
	public void addEmpId(Integer empId) {
		// TODO Auto-generated method stub
		String sql="insert into money_check_first(emp_id) values(?)";
		Object[] obj={empId};
		executeQuery(sql, obj);
		
	}
	@Override
	public void addFirstCheck() {
		// TODO Auto-generated method stub
		String sql="insert into money_check_first(pro_name,user_name,apply_money,apply_reason,3,0) " +
				"(select pa.pro_name,con.user_name , fa.money_app_num,fa.money_app_reason from " +
		"project_application pa ,fund_application fa," +
		"consumer con,employee_information ei where" +
		" fa.pro_id= pa.pro_id and fa.user_id=con.user_id)";
		 executeQuery(sql,null);
	}

	@Override
	public void update(int id,int status,int empId) {
		// TODO Auto-generated method stub
		String sql="update money_check_first set apply_status=?  ,emp_id=? where id=?";
		Object[] obj={status,empId,id};
		executeQuery(sql,obj);
	}
	
	

	@Override
	public List <FirstCheck> selectMoneyCheck(int startIndex, int page,
			Integer checkId, String proName, String userName, double money,
			String reason, Integer checkStatusId) {
		String sql="select top "+ page+"  * from  money_check_first where id not in" +
				"( select top "+startIndex+" id from money_check_first )";
		if(checkId!=null&&!"".equals(checkId)){
			
			sql+=" and id="+checkId;
		}
		if(proName!=null&&!"".equals(proName)){
			sql +=" and pro_name  like "+"'%"+proName+"%'";	
		}
		if(userName!=null&&!"".equals(userName)){
			sql +=" and user_name like "+"'%"+userName+"%'";
		}
		if(money>0&&!"".equals(money)){
			sql +=" and apply_money between "+(money+1000) +" and " +(money-1000);	
		}
		
		if(reason!=null&&!"".equals(reason)){
			sql +=" and apply_reason= "+ "'%"+reason+"%'";
		}
		if(checkStatusId!=null&&!"".equals(checkStatusId)){
			if(checkStatusId==3){
				sql+=" and apply_status="+3;
				}else{
				sql+= "and apply_status not in"+3; 	
				}
		}
		
		
		ConnPool cp = new ConnPool();
		Connection con = cp.getConnection();
		List<FirstCheck> moneyList=new ArrayList<FirstCheck>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
			
				FirstCheck fc=new FirstCheck();
				fc.setCheckId(rs.getInt("id"));
				fc.setProName(rs.getString("pro_name"));
				fc.setUserName(rs.getString("user_name"));
				fc.setMoney(rs.getDouble("apply_money"));
				fc.setReason(rs.getString("apply_reason"));
				fc.setCheckStatusId(rs.getInt("apply_status"));
				
				moneyList.add(fc);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage()+"323");
		}
		finally{
			cp.close(con);
		}
		// TODO Auto-generated method stub
		return moneyList;
	}

	@Override
	public int selectMoneyCout(Integer checkId, String proName,
			String userName, double money, String reason,
			Integer checkStatusId) {
		// TODO Auto-generated method stub
		String sql="select count(*) as count from money_check_first where 1=1";
		if(checkId!=null&&!"".equals(checkId)){
			
			sql+=" and id="+checkId;
		}
		if(proName!=null&&!"".equals(proName)){
			sql +=" and pro_name  like "+"'%"+proName+"%'";	
		}
		if(userName!=null&&!"".equals(userName)){
			sql +=" and user_name like "+"'%"+userName+"%'";
		}
		if(money>0&&!"".equals(money)){
			sql +=" and apply_money between "+(money+1000) +" and " +(money-1000);	
		}
		
		if(reason!=null&&!"".equals(reason)){
			sql +=" and apply_reason like "+ "'%"+reason+"%'";
		}
		if(checkStatusId!=null&&!"".equals(checkStatusId)){
			if(checkStatusId==3){
			sql+=" and apply_status="+checkStatusId;
			}else{
			sql+= "and apply_status not in"+checkStatusId; 	
			}
		}
		
			
			List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
			list =executeQuery(sql, null);
			int count =  (Integer) list.get(0).get("count");
			return count;
	
		
	}

	public static void main(String[] args) {
		FDaoImpl fd=new FDaoImpl();
		List<FirstCheck>list=fd.selectMoneyCheck(1, 1, null, "为爱", null, 0, null, null);
		System.out.println(list.size());
		for (int i=0;i<list.size();i++){
			System.out.println(list.get(0).getProName()+"sjsd"+list.get(0).getReason());
		}
	}

	
	
	

}
