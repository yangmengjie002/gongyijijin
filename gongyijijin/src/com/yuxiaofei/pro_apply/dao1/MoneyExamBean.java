package com.yuxiaofei.pro_apply.dao1;

import java.util.List;

import com.yuxiaofei.pro_apply.entity.FirstCheck;
import com.yuxiaofei.pro_apply.entity.SecondCheck;

public class MoneyExamBean {
	private int pageSize;
	private int currentPage;
	private List<FirstCheck>list1;
	private List<SecondCheck>list2;
	private int allPage;
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List<FirstCheck> getList1() {
		return list1;
	}
	public void setList1(List<FirstCheck> list1) {
		this.list1 = list1;
	}
	public List<SecondCheck> getList2() {
		return list2;
	}
	public void setList2(List<SecondCheck> list2) {
		this.list2 = list2;
	}
	public int getAllPage() {
		return allPage;
	}
	public void setAllPage(int allPage) {
		this.allPage = allPage;
	}
	
}
