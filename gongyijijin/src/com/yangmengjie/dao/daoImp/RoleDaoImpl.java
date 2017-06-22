package com.yangmengjie.dao.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.entity.Employee;
import com.entity.RoleEntity;
import com.util.BaseDao;
import com.util.ConnPool;
import com.yangmengjie.dao.dao.RoleDao;

public class RoleDaoImpl implements RoleDao {

	private ConnPool cp = new ConnPool();
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
		String sql = "select r.* from role r,employee_role er,employee_information ei where r.id = er.roleid and er.emp_id = ei.emp_id and ei.emp_id=?";
		Object[] params = {emp_id};

		Connection con = cp.getConnection();
		RoleEntity re=null;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			BaseDao.setParams(ps, params);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				re = new RoleEntity();
				re.setId(rs.getInt(1));
				re.setRoleName(rs.getString(2));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			cp.close(con);
		}

			return re;
		}

		

		@Override
		public int deleRole(int id) {
			String sql = "delete from employee_role where emp_id=?";
			QueryRunner qr = new QueryRunner(ConnPool.getBds());
			int flag = -1;
			try {
				flag = qr.update(sql, id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return flag;
		}

		@Override
		public int addRole(int id, int roleid) {
			String sql = "insert into employee_role values(?,?)";
			Object[]params = {id,roleid};
			int flag = -1;
			try {
				flag = BaseDao.executeUpdate(sql, params);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return flag;
		}

		@Override
		public int addRole1(String roleName) {
			String sql="insert into role values(?)";
			Object[] params = {roleName};
			int flag = -1;
			try {
				flag = BaseDao.executeUpdate(sql, params);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return flag;
		}

		@Override
		public int deleteRole(int roleid) {
			String sql = "delete from role where id=? and id not in (select roleid from employee_role)";
			QueryRunner qr = new QueryRunner(ConnPool.getBds());
			int flag = -1;
			try {
				flag = qr.update(sql, roleid);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return flag;
		}

		@Override
		public RoleEntity selectRoleByRoleid(int roleid) {
			QueryRunner qr = new QueryRunner(ConnPool.getBds());
			String sql = "select * from role where id="+roleid;
			try {
				RoleEntity roleEntity = qr.query(sql, new BeanHandler<RoleEntity>(RoleEntity.class));
				return roleEntity;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}

	}
