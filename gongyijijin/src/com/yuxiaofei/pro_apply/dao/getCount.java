package com.yuxiaofei.pro_apply.dao;

import java.util.ArrayList;
import java.util.List;

import com.yuxiaofei.pro_apply.dao.daoImpl.FDaoImpl;
import com.yuxiaofei.pro_apply.dao1.FDao;
import com.yuxiaofei.pro_apply.dao1.MoneyExamBean;
import com.yuxiaofei.pro_apply.entity.FirstCheck;

/**
 * @name
 * @author 74128
 * @papam 分页的进一步查询
 * @papam
 * @return
 * 2017-6-21下午9:59:11
 */
public class getCount {
	public MoneyExamBean  selectMoneyCheck(Integer pageSize,Integer currentPage,
			Integer checkId, String proName, String userName, double money,
			String reason, Integer checkStatusId) {
		int page = pageSize==null?3:pageSize;
		int curr = currentPage==null?1:currentPage;
		int startIndex = (curr-1)*page;
		List<FirstCheck> list = new ArrayList<FirstCheck>();
		FDao fd=new FDaoImpl();
		list=fd.selectMoneyCheck(startIndex, page, checkId, proName, userName, money, reason, checkStatusId);
		int pageCount=fd.selectMoneyCout(checkId, proName, userName, money, reason, checkStatusId);
		System.out.println("总信息条数"+pageCount);
		int allPage=(int) Math.ceil(pageCount*1.0/page);
		MoneyExamBean bean=new MoneyExamBean();
		bean.setAllPage(allPage);
		bean.setCurrentPage(curr);
		bean.setPageSize(page);
		bean.setList1(list);
		System.out.println("共多少页："+allPage);
		System.out.println("当前页"+curr);
		System.out.println("每页显示几条"+page);
		return bean;
		
	}
}
