package com.shidongfang.util;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 基本action,继承actionsupport支持类。
 * @author yang
 *
 */
public class BaseAction extends ActionSupport{
	
	private Map request = (Map) ActionContext.getContext().get("request");
	private Map session = (Map) ActionContext.getContext().getSession();
	String uploadDir="upload";
	public Map getRequest() {
		return request;
	}
	public void setRequest(Map request) {
		this.request = request;
	}
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}
	/*
	 * 删除服务器多余的图片
	 * 
	 * 
	 * **/
	public  void deletePicture(List<String> pathList) {
		String path=ServletActionContext.getServletContext().getRealPath(uploadDir);
		File file = new File(path);
		File[] listFiles = file.listFiles();
		for (File uploadfile : listFiles) {
			String name = uploadfile.getName();
			if(!pathList.contains(name)){
				uploadfile.delete();
			}
		}
		

	}
	public  String uploadFile(String uploadFileName,File upload ) {
		//获取上传文件在服务器上的绝对路径
				
				String[] names=uploadFileName.split("\\.");//将文件以.分割成一个数组xxxx.txt
				String tempNum=(int)(Math.random()*100000)+"";
				uploadFileName=tempNum +System.currentTimeMillis()+"."+names[names.length-1];
				String uploadFile=ServletActionContext.getServletContext().getRealPath(uploadDir)+File.separator+uploadFileName;
				try {
					FileInputStream fis = new FileInputStream(upload);
					FileOutputStream fos = new FileOutputStream(uploadFile);
					byte[] buf= new byte[1024];
					int len=0;
						while ((len=fis.read(buf))!=-1) {
							fos.write(buf,0,len);
						}
						fis.close();
						fos.flush();
						fos.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return uploadDir+File.separator+uploadFileName;

	}
	
	
	public static void main(String[] args) {
		String str="xxxx.txt";
		String tempNum=(int)(Math.random()*100000)+"";
		String[] split = str.split("\\.");
		System.out.println(split[0]+"|||||||"+split[1]);
		System.out.println(tempNum);
	}
	
	
	
}
