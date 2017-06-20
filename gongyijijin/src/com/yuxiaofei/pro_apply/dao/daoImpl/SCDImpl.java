package com.yuxiaofei.pro_apply.dao.daoImpl;

import java.util.List;
import java.util.Map;

import com.yuxiaofei.pro_apply.dao.baseDao.BaseDao;
import com.yuxiaofei.pro_apply.dao.dao.SecondCheckDao;
import com.yuxiaofei.pro_apply.entity.SecondCheck;

public class SCDImpl  extends BaseDao implements SecondCheckDao {


	@Override
	public void addTab(SecondCheck sc) {
		String sql="insert into board_exam_money_table values(?,?,?,?)";
		// TODO Auto-generated method stub
		Object[] params={sc.getProExeId(),sc.getEmpId(),sc.getStatusId(),sc.getMoneyInfo()};
		executeQuery(sql, params);
	}

	@Override
	public List<Map<String, Object>> findChekcId(int id) {
		// TODO Auto-generated method stub
		String sql="select pa.pro_name, ei.emp_name,fa.money_app_reason " +
				"from pro_exam_money_table pemt, " +
				"employee_information ei, fund_application fa, project_application pa " +
				"where  ei.emp_id=pemt.emp_id and fa.pro_id=pa.pro_id and pemt.exam_status_id=1  and pa.pro_id="+id;
		Object[] params={id};
		return executeQuery(sql, params);
	}

	@Override
	public List<Map<String, Object>> findMondyApplyName(String name) {
		String sql="select pa.pro_name, ei.emp_name,fa.money_app_reason " +
				"from pro_exam_money_table pemt, " +
				"employee_information ei, fund_application fa, project_application pa " +
				"where  ei.emp_id=pemt.emp_id and fa.pro_id=pa.pro_id and pemt.exam_status_id=1 and  pa.pro_name="+name;
		Object[] params={name};
		return executeQuery(sql, params);
	}

	@Override
	public List<Map<String, Object>> findCheckName(String username) {
		String sql="select pa.pro_name, ei.emp_name,fa.money_app_reason " +
				"from pro_exam_money_table pemt, " +
				"employee_information ei, fund_application fa, project_application pa " +
				"where  ei.emp_id=pemt.emp_id and fa.pro_id=pa.pro_id and pemt.exam_status_id=1 and ei.emp_name="+username;
		Object[] params={username};
		return executeQuery(sql, params);
		// TODO Auto-generated method stub
		
	}

	
		
}
