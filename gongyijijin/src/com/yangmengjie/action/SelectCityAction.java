package com.yangmengjie.action;

import java.io.IOException;
import java.util.List;

import com.util.BaseAction;
import com.yangmengjie.service.service.PcdService;
import com.yangmengjie.service.serviceImp.PcdServiceImp;

public class SelectCityAction extends BaseAction{
	
	private String province;
	private String city;
	
	private PcdService pcs = new PcdServiceImp();
	/**
	 * 获取省名称。
	 * @return
	 */
	public String getProvince(){
		List<String> proList = pcs.getProvince();
		String str="";
		for (int i = 0; i < proList.size(); i++) {
			str += proList.get(i)+";";
		}
		try {
			super.getResponse().getWriter().print(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 获取县名
	 * @return
	 */
	public String getDistr(){
		List<String> proList = pcs.getDistr(city);
		System.out.println(proList);
		String str="";
		for (int i = 0; i < proList.size(); i++) {
			str += proList.get(i)+";";
		}
		try {
			super.getResponse().getWriter().print(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 获取市名。
	 * @return
	 */
	public String getCity(){
		List<String> cityList = pcs.getCity(province);
		System.out.println(province);
		System.out.println(cityList);
		String str="";
		for (int i = 0; i < cityList.size(); i++) {
			str += cityList.get(i)+";";
		}
		try {
			super.getResponse().getWriter().print(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
}
