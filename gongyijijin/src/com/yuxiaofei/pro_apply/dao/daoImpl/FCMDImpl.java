package com.yuxiaofei.pro_apply.dao.daoImpl;

import java.util.List;
import java.util.Map;

import com.yuxiaofei.pro_apply.dao.baseDao.BaseDao;
import com.yuxiaofei.pro_apply.dao.dao.FirstCheckMoney;
import com.yuxiaofei.pro_apply.entity.FirstCheck;

public class FCMDImpl extends BaseDao implements FirstCheckMoney {

	public void save(FirstCheck fc){
		String sql="insert into pro_exam_money_table values(?,?,?,?)";
		Object[] params={fc.getMoneyAppId(),fc.getEmp_id(),fc.getCheckStatusId(),fc.getReason()};
		executeUpdate(sql, params);
	}
	@Override
	public void updateStatus(Integer key, int id) {
		// TODO Auto-generated method stub

	}


	/*String sql1="select pemt.pro_exam_money_id,pa.pro_name,con.user_name , " +
			"fa.money_app_num,fa.money_app_reason,pemt.exam_status_id from " +
			" project_application pa ,pro_exam_money_table pemt ,fund_application fa," +
			"consumer con,employee_information ei where pemt.money_app_id=fa.money_app_id" +
			" and fa.pro_id= pa.pro_id and fa.user_id=con.user_id  and pemt.emp_id=ei.emp_id  " +
			"and pemt.pro_exam_money_id =1";*/
	public List<Map<String, Object>> findChekcNum(double num) {
		// TODO Auto-generated method stub
		String sql="select pa.pro_name,con.user_name , fa.money_app_num,fa.money_app_reason from " +
				"project_application pa ,fund_application fa," +
				"consumer con,employee_information ei where" +
				" fa.pro_id= pa.pro_id and fa.user_id=con.user_id and fa.money_app_num="+num; 
				
		Object [] params ={num};
		return executeQuery(sql,params);
	}

	@Override
	public List findUserByUsername(String  username) {
		// TODO Auto-generated method stub
		String sql="select pa.pro_name,con.user_name , fa.money_app_num,fa.money_app_reason from " +
		"project_application pa ,fund_application fa," +
		"consumer con,employee_information ei where" +
		" fa.pro_id= pa.pro_id and fa.user_id=con.user_id and con.user_name="+username; 
				
		Object [] params ={username};
		return executeQuery(sql,params);
		
	}

	@Override
	public List<Map<String, Object>>findMoneyApplyName (String name) {
		String sql="select pa.pro_name,con.user_name , fa.money_app_num,fa.money_app_reason from " +
				"project_application pa ,fund_application fa," +
				"consumer con,employee_information ei where" +
				" fa.pro_id= pa.pro_id and fa.user_id=con.user_id and pa.pro_name="+name; 
		Object [] params ={name};
		return executeQuery(sql,params);
	}

	@Override
	public List<Map<String, Object>> findAllUserPage(int pageNo, int PageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int pageCount(int PageSize) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateUser() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Map<String, Object>> findAllPath() {
		// TODO Auto-generated method stub
		return null;
	}

}
