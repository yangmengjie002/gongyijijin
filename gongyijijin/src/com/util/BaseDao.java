package com.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	private static ConnPool cp = new ConnPool();
	
	/**
	 *	把params数组数据放入ps预编译中。
	 * @param ps
	 * @param params
	 */
	public static void setParams(PreparedStatement ps,Object[]params){
		try {
			for (int i = 0; i < params.length; i++) {
				ps.setObject(i+1, params[i]);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 通过sql语句插入，修改，更新数据。
	 * @param sql
	 * @param params
	 * @return
	 */
	public static int executeUpdate(String sql,Object[]params){
		Connection con = cp.getConnection();
		int flag=-1;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			setParams(ps, params);
			flag=ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}finally{
			cp.close(con);
		}
		return flag;
	}
	
	/**
	 * 通过sql语句和params查询出的到ResultSet。
	 * @param sql
	 * @param params
	 * @return
	 */
	public  static ResultSet executeQuery(String sql,Object[] params){
		Connection con = cp.getConnection();
		PreparedStatement ps=null;
		ResultSet rs = null;
		try {
			ps= con.prepareStatement(sql);
			setParams(ps, params);
			rs = ps.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			cp.close(con);
		}
		return rs;
	}
	
	
}
