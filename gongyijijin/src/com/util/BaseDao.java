package com.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
			e.printStackTrace();
		}finally{
			cp.close(con);
		}
		return flag;
	}

	/**
	 * 根据条件查询出结果集。
	 * @param sql
	 * @param params
	 * @return
	 */
	public static List<Map<String,Object>> executeQuery(String sql,Object[] params) {
		List<Map<String,Object>> objectList=new ArrayList<Map<String,Object>>();
		Connection conn=cp.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps=conn.prepareStatement(sql);
			if(params!=null){
				setParams(ps, params);
			}
			rs=ps.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
			while(rs.next()){
				Map<String,Object> rowMap=new HashMap<String,Object>();
				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					rowMap.put(rsmd.getColumnName(i+1), rs.getObject(i+1));
				}
				objectList.add(rowMap);
			}
			ps.close();
			rs.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			cp.close(conn);

		}

		return objectList;
	}


}
