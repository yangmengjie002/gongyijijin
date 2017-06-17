package com.entity;

import java.util.List;

public class EmployeeBean {
	private int pageSize;
	private int currentPage;
	private List list;
	private int allPage;
	private String str;
	
	public String getStr() {
		if(getCurrentPage()<=1){setCurrentPage(1);}
		if(getCurrentPage()>getAllPage()){setCurrentPage(getAllPage());}
		StringBuffer sb = new StringBuffer();
		sb.append("<a href='?currPage="+(getCurrentPage()-1)+"&pageSize="+getPageSize()+"'>上一页</a>");
		sb.append("<a href='?currPage="+(getCurrentPage()+1)+"&pageSize="+getPageSize()+"'>下一页</a>");
		return sb.toString();
	}
	public void setStr(String str) {
		this.str = str;
	}
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
	
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getAllPage() {
		return allPage;
	}
	public void setAllPage(int allPage) {
		this.allPage = allPage;
	}
	
}
