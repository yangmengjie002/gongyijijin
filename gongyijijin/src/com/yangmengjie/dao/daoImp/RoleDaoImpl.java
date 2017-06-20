package com.yangmengjie.dao.daoImp;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.entity.RoleEntity;
import com.util.BaseDao;
import com.util.ConnPool;
import com.yangmengjie.dao.dao.RoleDao;

public class RoleDaoImpl implements RoleDao {

	@Override
	public List<RoleEntity> selectRole() {
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "select * from role";
		try {
			List<RoleEntity> roleList = qr.query(sql, new BeanListHandler<RoleEntity>(RoleEntity.class));
			return roleList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public RoleEntity selectRoleById(int emp_id) {
		QueryRunner qr = new QueryRunner(ConnPool.getBds());
		String sql = "select r.* from role r,employee_role er,employee_information ei where r.id = er.roleid and er.emp_id = ei.emp_id and er.emp_id="+emp_id;
		try {
			RoleEntity role = qr.query(sql,new BeanHandler<RoleEntity>(RoleEntity.class));
			return role;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static void main(String[] args) {
		RoleEntity selectRole = new RoleDaoImpl().selectRoleById(1);
		System.out.println(selectRole.getRoleName());
		
	}

	@Override
	public int addRole(String roleName) {
		String sql ="insert into role values(?,?)";
		int flag = BaseDao.executeUpdate(sql, null);
		return flag;
	}

}
