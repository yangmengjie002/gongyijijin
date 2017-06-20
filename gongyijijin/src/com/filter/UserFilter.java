package com.filter;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String code = (String) req.getSession().getAttribute("code");
		String code1 = req.getParameter("code");
		String name= req.getParameter("username");
		System.out.println(code+";"+code1+":"+name);
	
		System.out.println("mmmmmm");
		if(!code.equalsIgnoreCase(code1)){
			
			resp.setHeader("refresh", "1s;url="+req.getContextPath()+"/entryBack.jsp");
			return;
		}
		chain.doFilter(req,resp);
	
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}
