package com.yangmengjie.dao.dao;

import java.util.List;

public interface PcdDao {
	/**
	 * 获取省名。
	 * @return
	 */
	public List getProvince();
	/**
	 * 根据省名获取城市。
	 * @param province
	 * @return
	 */
	public List getCity(String province);
	/**
	 * 根据市获取县
	 * @param city
	 * @return
	 */
	public List getDistr(String city);
}
