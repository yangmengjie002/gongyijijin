package com.yuxiaofei.pro_apply.dao.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.util.ConnPool;
import com.yuxiaofei.pro_apply.dao.baseDao.BaseDao;
import com.yuxiaofei.pro_apply.dao1.SDao;
import com.yuxiaofei.pro_apply.entity.FirstCheck;
import com.yuxiaofei.pro_apply.entity.SecondCheck;

public class SDaoImpl extends BaseDao implements SDao{
	
	@Override
	public void addSecondCheck() {
		// TODO Auto-generated method stub
		String sql="insert into second_check_money(pro_name,fir_emp_check,apply_money,apply_reason) select "+
		" mcf.pro_name, ei.emp_name,mcf.apply_money,mcf.apply_reason "+
		" from money_check_first mcf, employee_information ei "+
		" where mcf.emp_id=ei.emp_id ";
		executeQuery(sql, null);
	}

	@Override
	public void update(int id, int status,int empId) {
		// TODO Auto-generated method stub
		String sql="update second_check_money set apply_status=?,emp_id=?  where id=?";
		Object[] obj={status,empId,id};
		executeQuery(sql,obj);
		
	}

	@Override
	public List<SecondCheck> selectMoneyCheck(int startIndex, int page,
			Integer moneyId, String proName, String firstCheckEmp,
			String applyReason, double money, Integer statusId) {
		String sql="select top "+ page+"  * from  second_check_money where id not in" +
				"( select top "+startIndex+" id from second_check_money )";
		if(moneyId!=null&&!"".equals(moneyId)){
				sql+=" and id="+moneyId;
		}
		if(proName!=null&&!"".equals(proName)){
			sql+=" and pro_name like "+"%" +proName+"%";
		}
		if(firstCheckEmp!=null&&!"".equals(firstCheckEmp)){
			sql+=" and fir_emp_check like "+"%"+firstCheckEmp+"%";
		}
		if(applyReason!=null&&!"".equals(applyReason)){
			sql+=" and apply_reason like"+"%"+applyReason+"%";
		}
		if(money>0&&!"".equals(money)){
			sql+=" and apply_money between "+(money+1000) +" and " +(money-1000);
		}if(statusId!=null&&!"".equals(statusId)){
			if(statusId==3){
				sql+=" and apply_status="+3;
				}else{
				sql+= " and apply_status not in"+3; 	
				}
		}
		ConnPool cp = new ConnPool();
		Connection con = cp.getConnection();
		List<SecondCheck> moneyList=new ArrayList<SecondCheck>();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
			
				SecondCheck fc=new SecondCheck();
				fc.setMoneyId(rs.getInt("id"));
				fc.setProName(rs.getString("pro_name"));
				fc.setFirstCheckEmp(rs.getString("fir_emp_check"));
				fc.setMoney(rs.getDouble("apply_money"));
				fc.setApplyReason(rs.getString("apply_reason"));
				fc.setStatusId(rs.getInt("apply_status"));
				
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
	public int selectMoneyCout(Integer moneyId, String proName,
			String firstCheckEmp, String applyReason, double money,
			Integer statusId) {
		String sql="select count(*) as count from second_check_money where 1=1";
		if(moneyId!=null&&!"".equals(moneyId)){
			sql+=" and id="+moneyId;
		}
		if(proName!=null&&!"".equals(proName)){
			sql+=" and pro_name like "+"%" +proName+"%";
		}
		if(firstCheckEmp!=null&&!"".equals(firstCheckEmp)){
			sql+=" and fir_emp_check like "+"%"+firstCheckEmp+"%";
		}
		if(applyReason!=null&&!"".equals(applyReason)){
			sql+=" and apply_reason like"+"%"+applyReason+"%";
		}
		if(money>0&&!"".equals(money)){
			sql+=" and apply_money between "+(money+1000) +" and " +(money-1000);
		}if(statusId!=null&&!"".equals(statusId)){
				if(statusId==3){
				sql+=" and apply_status="+3;
				}else{
				sql+= " and apply_status not in"+3; 	
				}
		}
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		list =executeQuery(sql, null);
		int count =  (Integer) list.get(0).get("count");
		return count;
		
	}

	@Override
	public void addEmpId(Integer empId) {
		// TODO Auto-generated method stub
		
	}

}
