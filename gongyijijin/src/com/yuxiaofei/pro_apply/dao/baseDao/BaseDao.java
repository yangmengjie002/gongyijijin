package com.yuxiaofei.pro_apply.dao.baseDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
<<<<<<< HEAD:gongyijijin/src/com/yuxiaofei/pro_apply/dao/baseDao/BaseDao.java
 * @���� ������ݿ�Ļ���
 * @����
 * @��˾
 * @ʱ�� 2017-6-8
=======
 * @描述 basedao 增删改查工具类
 * @作者
 * @公司
 * @时间 2017-6-19
>>>>>>> 0590e1ffdcbe9007e4303b71d0ab8393fa8968ab:gongyijijin/src/com/shidongfang/util/BaseDao.java
 */
public class BaseDao {
	
	static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
<<<<<<< HEAD:gongyijijin/src/com/yuxiaofei/pro_apply/dao/baseDao/BaseDao.java
	static String url="jdbc:sqlserver://172.16.22.143:1433;DatabaseName=Foundation";
=======
	static String url="jdbc:sqlserver://172.16.22.143:1433;databaseName=Foundation";
>>>>>>> 0590e1ffdcbe9007e4303b71d0ab8393fa8968ab:gongyijijin/src/com/shidongfang/util/BaseDao.java
	static String user="sa";
	static String password="123456";
	PreparedStatement ps=null;
	ResultSet rs=null;
	//加载驱动
	static{
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	
	//获取连接
	 public static 	Connection getConnection() {
		 Connection conn=null;
		 try {
			 conn=DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return conn;
	}
	//6:关闭连接
	public static void closeConnection(ResultSet rs,PreparedStatement ps,Connection conn) {
		if(rs!=null){
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
		public PreparedStatement setParam(PreparedStatement ps,Object[] params) {
			//设置参数
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					try {
						ps.setObject(i+1, params[i]);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			return ps;
		}
		
	
	
	
	//增删改
	public boolean executeUpdate(String sql, Object[] params ) {
		Connection conn=getConnection();
		try {
			ps=conn.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				
				ps.setObject(i+1, params[i]);
			}
			int ret=ps.executeUpdate();
			if(ret>0){
				System.out.println("操作成功");
			}else{
				System.out.println("操作失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeConnection(null, ps, conn);
		}
		return false;
	}
	
	
	//查询
	public List<Map<String,Object>> executeQuery(String sql,Object[] params) {
		List<Map<String,Object>> objectList=new ArrayList<Map<String,Object>>();
		Connection conn=getConnection();
		try {
			ps=conn.prepareStatement(sql);
			ps=setParam(ps, params);
			rs=ps.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
			while(rs.next()){
				Map<String,Object> rowMap=new HashMap<String,Object>();
				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					rowMap.put(rsmd.getColumnName(i+1), rs.getObject(i+1));
				}
				objectList.add(rowMap);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeConnection(rs, ps, conn);

		}
		
		return objectList;
	}
	
}
