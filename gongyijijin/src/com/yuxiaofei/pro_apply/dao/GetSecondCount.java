package com.yuxiaofei.pro_apply.dao;

import java.util.ArrayList;
import java.util.List;

import com.yuxiaofei.pro_apply.dao.daoImpl.SDaoImpl;
import com.yuxiaofei.pro_apply.dao1.MoneyExamBean;
import com.yuxiaofei.pro_apply.dao1.SDao;

import com.yuxiaofei.pro_apply.entity.SecondCheck;

public class GetSecondCount {
	public MoneyExamBean  selectMoneyCheck(Integer pageSize,Integer currentPage,
			Integer moneyId, String proName, String firstCheckEmp,
			String applyReason, double money, Integer statusId) {
		int page = pageSize==null?3:pageSize;
		int curr = currentPage==null?1:currentPage;
		int startIndex = (curr-1)*page;
		List<SecondCheck> list = new ArrayList<SecondCheck>();
		SDao fd=new SDaoImpl();
		list=fd.selectMoneyCheck(startIndex, page, moneyId, proName, firstCheckEmp, applyReason, money, statusId);		
		int pageCount=fd.selectMoneyCout(moneyId, proName, firstCheckEmp, applyReason, money, statusId);
		System.out.println("总信息条数"+pageCount);
		int allPage=(int) Math.ceil(pageCount*1.0/page);
		MoneyExamBean bean=new MoneyExamBean();
		bean.setAllPage(allPage);
		bean.setCurrentPage(curr);
		bean.setPageSize(page);
		bean.setList2(list);
		System.out.println("共多少页："+allPage);
		System.out.println("当前页"+curr);
		System.out.println("每页显示几条"+page);
		return bean;
		
	}
}
