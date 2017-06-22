package com.yuxiaofei.pro_apply.dao1;

import java.util.List;

import com.yuxiaofei.pro_apply.entity.SecondCheck;





public interface SDao {
	void addSecondCheck();//给第二次资金审查表中添加数据
	void update(int id,int status,int empId);//更新第二次审查表中数据
	List <SecondCheck> selectMoneyCheck(int startIndex,int page,Integer moneyId,
			String proName,String firstCheckEmp,String applyReason,double money,Integer statusId);//对显示的东西进行分页
	int selectMoneyCout(Integer moneyId,String proName,String firstCheckEmp,String applyReason,double money,Integer statusId);//获取分页的数据的总行数
	void addEmpId(Integer empId);//获取员工id
}
