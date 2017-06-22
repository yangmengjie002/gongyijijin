package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp =  (HttpServletResponse) response;
		HttpSession session = req.getSession();
		String name=(String) session.getAttribute("name");
		System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmm");
		String s = req.getRequestURI();
		System.out.println(name);
		System.out.println(s);
		System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmm");
		if(name!=null){
			chain.doFilter(request, response);
			return;
		}
		resp.getWriter().write("权限不足无法访问");
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
