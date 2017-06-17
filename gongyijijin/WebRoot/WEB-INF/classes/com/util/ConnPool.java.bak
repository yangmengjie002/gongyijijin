package com.util;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp.BasicDataSource;

public class ConnPool {
	/**
	 * 创建一个静态连接池
	 */
	private static BasicDataSource bds = new BasicDataSource();
	
	public static BasicDataSource getBds() {
		return bds;
	}

	/**
	 * 配置数据库连接
	 */
	static{
		bds.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		bds.setUrl("jdbc:sqlserver://172.16.22.143:1433;DatabaseName=Foundation");
		bds.setUsername("sa");
		bds.setPassword("123456");
	}
	/**
	 * 从连接池中获取连接。
	 * @return
	 */
	public Connection getConnection(){
		if(bds!=null){
			try {
				return bds.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	/**
	 * 释放使用的连接。
	 * @param con
	 */
	public void close(Connection con){
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
