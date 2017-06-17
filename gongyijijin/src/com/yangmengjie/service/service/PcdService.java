package com.yangmengjie.service.service;

import java.util.List;

public interface PcdService {
	/**
	 * 获取所有的省名
	 * @return
	 */
	public List<String> getProvince();
	/**
	 * 根据省获取城市。
	 * @param province
	 * @return
	 */
	public List<String> getCity(String province);
	/**
	 * 根据市获取县。
	 * @param city
	 * @return
	 */
	public List<String> getDistr(String city);
}
