package com.yuxiaofei.pro_apply.dao1;

import java.util.List;

import com.yuxiaofei.pro_apply.entity.FirstCheck;

public interface FDao {
	void addFirstCheck();//给第一次资金审查表中添加数据
	void update(int id,int status,int empId);//更新第一次审查表中数据
	List <FirstCheck> selectMoneyCheck(int startIndex,int page,Integer checkId ,
			String proName,String userName,double money,String reason,Integer checkStatusId);//对显示的东西进行分页
	int selectMoneyCout(Integer checkId, String proName, String userName, double money,
			String reason, Integer checkStatusId);//获取分页的数据的总行数
	void addEmpId(Integer empId);//获取员工id
	
}
