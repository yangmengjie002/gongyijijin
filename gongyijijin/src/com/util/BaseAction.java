package com.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 基本action,继承actionsupport支持类。
 * @author yang
 *
 */
public class BaseAction extends ActionSupport{
	/**
	 * 获取request
	 * @return
	 */
	public  HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	/**
	 * 获取response
	 * @return
	 */
	public  HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	/**
	 * 获取session
	 * @return
	 */
	public HttpSession getSession(){
		return ServletActionContext.getRequest().getSession();
	}
	public static String getSessionAttribute(String string) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
