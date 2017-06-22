package com.filter;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.FunctionEntity;
import com.entity.RoleEntity;
import com.util.BaseDao;

public class UserFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//强转
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		resp.setContentType("text/html;charset=utf-8");
		//过滤
		List<FunctionEntity> funList = (List<FunctionEntity>) req.getSession().getAttribute("funList");
		List<FunctionEntity> allList = (List<FunctionEntity>) req.getSession().getAttribute("allList");
	
		for(int i=0;i<funList.size();i++){
			System.out.println(funList.get(i).getUrl());
			
		}
		System.out.println("-------------------------------------------------------------");
		for (int i = 0; i < allList.size(); i++) {
			System.out.println(allList.get(i).getUrl());
		}
		System.out.println("-------------------------------------------------------------");
		System.out.println(req.getRequestURI());
		System.out.println("-------------------------------------------------------------");

		int m=-1;
		int n=-1;
		String url = req.getRequestURI();
		for(int i=0;i<funList.size();i++){	
			if(url.equals(funList.get(i).getUrl())){
				m=1;
			}
		}
		for(int i=0;i<allList.size();i++){
			if(url.equals(allList.get(i).getUrl())){
				n=1;
			}
		}
		if(m<0 && n>0){

			resp.getWriter().write("你权限不足，请返回。<a href='javascript:history.go(-1)'>返回</a>");
			return;
		}
		chain.doFilter(req, resp);		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
