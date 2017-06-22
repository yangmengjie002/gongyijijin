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

	@Override
	public List<FunctionEntity> selectAllFunction() {
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "select * from functions";
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
	public int deleteFunById(int roleid) {
		String sql = "delete from role_function where roleid =?";
		int flag = -1;
		Object[]params = {roleid};
		flag = BaseDao.executeUpdate(sql, params);
		return flag;
	}

	@Override
	public int addFunById(int id, int[] params) {
		int flag = -1;
		for (int i = 0; i < params.length; i++) {
			String sql = "insert into role_function values(?,?)";
			Object[]par = {id,params[i]};
			flag += BaseDao.executeUpdate(sql, par);
		}	
		return flag;
	}

	@Override
	public List<FunctionEntity> selectFunById(int roleid) {
		String sql = "select f.* from role_function rf,functions f where rf.functionid=f.id and rf.roleid="+roleid;
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
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
	public int insertFun(String functionName, String url) {
		String sql = "insert into functions values(?,?)";
		Object[]params = {functionName,url};
		int flag = BaseDao.executeUpdate(sql, params);
		return flag;
	}

	@Override
	public int deleteFun(int id) {
		String sql = "delete from functions where id not in (select functionid from role_function) and id=?";
		Object[]params = {id};
		int flag = -1;
		flag = BaseDao.executeUpdate(sql, params);
		
		return flag;
	}
	

}
