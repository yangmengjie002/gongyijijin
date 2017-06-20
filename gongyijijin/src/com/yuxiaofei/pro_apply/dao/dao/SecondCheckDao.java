package com.yuxiaofei.pro_apply.dao.dao;

import java.util.List;
import java.util.Map;

import com.yuxiaofei.pro_apply.entity.SecondCheck;


public interface SecondCheckDao{
	

	void addTab(SecondCheck sc);
	List <Map<String,Object>>  findChekcId(int id);//按照项目id查找
	List <Map<String,Object>>  findMondyApplyName(String proName);//按照项目名称查找
	List <Map<String,Object>>  findCheckName(String username);//按照一次审核负责人来进行查找
}
