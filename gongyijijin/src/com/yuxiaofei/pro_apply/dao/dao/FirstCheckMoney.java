package com.yuxiaofei.pro_apply.dao.dao;

import java.util.List;
import java.util.Map;

import com.entity.ProExamMoneyTable;
import com.yuxiaofei.pro_apply.entity.FirstCheck;

/**
 * @name
 * @author 74128
 * @papam 第一次资金审核接口
 * @papam 
 * @return
 * 2017-6-17下午2:22:45
 */
public interface FirstCheckMoney {
	void save(FirstCheck fc);
	void updateStatus(Integer key,int id);//修改审核状态
	List <Map<String,Object>>  findChekcNum(double num);//按照申请金额查找
	List <Map<String,Object>>  findMoneyApplyName(String name);//按照项目名称查找
	List <Map<String,Object>>  findUserByUsername(String username);//按资金申请人来进行查找
	List <Map<String,Object>>  findAllUserPage(int pageNo,int PageSize);//分页
	int pageCount(int PageSize);
	void updateUser();  
	List<Map<String,Object>>findAllPath();
	
}
