package com.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 基本action,继承actionsupport支持类。
 * @author yang
 *
 */
public class BaseAction extends ActionSupport{
	/**
	 * 向request中放入键值对str=obj。
	 * @param str
	 * @param obj
	 */
	public static void setRequestAttribute(String str,Object obj){
		ServletActionContext.getRequest().setAttribute(str, obj);
	}
	
	/**
	 * 从request中获取str的值。
	 * @param str
	 * @return
	 */
	public static Object getRequestAttribute(String str){
		Object attribute = ServletActionContext.getRequest().getAttribute(str);
		return attribute;
	}
	/**
	 * 把键值对str：obj放入session中。
	 * @param str
	 * @param obj
	 */
	public static void setSessionAttribute(String str,Object obj){
		ServletActionContext.getRequest().getSession().setAttribute(str, obj);
	}
	
	/**
	 * 从session中获取str的值。
	 * @param str
	 * @return
	 */
	public static Object getSessionAttribute(String str){
		return ServletActionContext.getRequest().getSession().getAttribute(str);
	}
	
	/**
	 * 把str响应到前端。
	 * @param str
	 */
	public void getWriter(String str){
		try {
			ServletActionContext.getResponse().getWriter().write(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
