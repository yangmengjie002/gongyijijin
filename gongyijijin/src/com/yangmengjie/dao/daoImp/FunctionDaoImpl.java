package com.yangmengjie.dao.daoImp;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.entity.FunctionEntity;
import com.util.BaseDao;
import com.util.ConnPool;
import com.yangmengjie.dao.dao.FunctionDao;

public class FunctionDaoImpl implements FunctionDao{

	@Override
	public List<FunctionEntity> selectFunctionByRoleName(String roleName) {
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "select f.* from role r,role_function rf ,functions f where rf.roleid = r.id and rf.functionid = f.id and r.roleName='"+roleName+"'";
		try {
			List<FunctionEntity> funList = qr.query(sql, new BeanListHandler<FunctionEntity>(FunctionEntity.class));
			return funList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int deleteRole_FunByRoleName(String roleName) {
		String sql = "delete from role_function where roleid = (select id from role where roleName='"+roleName+"') ";
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		int flag = -1;
		try {
			flag=qr.update(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	

	

	@Override
	public int insertRole_FunByRoleName(int roleId, Object[] functionIdList) {
		String sql = "insert into role_function values(?,?)";
		int flag=-1;
		for(int i=0;i<functionIdList.length;i++){
			Object[]params = {roleId,functionIdList[i]};
			flag += BaseDao.executeUpdate(sql, params);
		} 
		return flag;
	}
	

}
