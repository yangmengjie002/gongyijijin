package com.yuxiaofei.pro_apply.dao.baseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.util.ConnPool;

/**
 * @���� ������ݿ�Ļ���
 * @����
 * @��˾
 * @ʱ�� 2017-6-8
 */
public class BaseDao {
	
private static   ConnPool cp=new ConnPool();
	//数据库连接
		
		/**
		 * 设置参数
		 * 
		 * 
		 * */
	public  static void setParam(PreparedStatement ps,Object[] params) {
		//循环设置参数
		if(params!=null){
			for (int i = 0; i < params.length; i++) {
				try {
					ps.setObject(i+1, params[i]);
				} catch (SQLException e) {
					System.out.println(e.getMessage()+1);
				}
			}
		}
		
		

	}
	//增加 ，。删除。修改
		public static int executeUpdate(String sql,Object[] params) {
			Connection conn=cp.getConnection();
			PreparedStatement ps=null;
			int ret=-1;
			try {
				ps=conn.prepareStatement(sql);
				setParam(ps, params);
				 ret=ps.executeUpdate();
				if(ret>0){
					System.out.println("操作成功！");
				}else{
					System.out.println("操作失败！");
				}
			} catch (SQLException e) {
				System.out.println(e.getMessage()+2);
			}finally{
				cp.close(conn);
			}
			return ret;
		}
		
		//查询
		public List<Map<String,Object>> executeQuery(String sql,Object[] params) {
			List<Map<String,Object>> objectList= new ArrayList<Map<String,Object>>();//定义一个集合，封装一个表的所有列
			
			Connection conn=cp.getConnection();// 获取连接
			PreparedStatement ps=null;
			try {
				ps=conn.prepareStatement(sql);//获取ps对象
				setParam(ps, params);//设置参数
				ResultSet rs=ps.executeQuery();//执行sql
				ResultSetMetaData rsmd=rs.getMetaData();//获取元数据对象
				while (rs.next()) {// 循环遍历所有的行
					//将一行数据封装到一个map集合，key是列名，value 列值，最后再把map封装到list中
					Map<String, Object> rowMap=new HashMap<String, Object>();
					for (int i = 0; i < rsmd.getColumnCount(); i++) {//循环遍历所有列

						rowMap.put(rsmd.getColumnName(i+1), rs.getObject(i+1));//rsmd.getColumnName(i+1)获取列名，
						
					}
					objectList.add(rowMap);//，最后再把map封装到list中
				}
			} catch (SQLException e) {
				System.out.println(e.getMessage()+3);
			}finally{
				cp.close(conn);
			}
			
			return objectList;
		}

}
