package com.wangyunming.figh.action;

import java.io.*;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.entity.ProApp;
import com.opensymphony.xwork2.ActionSupport;
import com.util.BaseDao;

public class ApplyingForAction extends ActionSupport{
	private ProApp p;
	private File photo;
	private String photoFileName;
	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public String getPhotoFileName() {
		return photoFileName;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}

	public ProApp getP() {
		return p;
	}

	public void setP(ProApp p) {
		this.p = p;
	}
	public String add_ProApp(){
		System.out.println(p.getPro_name());
		System.out.println(p.getPro_monry());
		System.out.println(p.getPro_begin_time());
		System.out.println(p.getPro_appl_reason());
		String sql="insert into project_application values(?,?,?,?,?,?,?,?)";
		Object[] params={8,p.getPro_name(),p.getPro_monry(),1,p.getPro_begin_time(),1,p.getPro_appl_reason(),2017-8-8};
		BaseDao.executeUpdate(sql, params);
		
		
		try {
			String name=new Date().getTime()+photoFileName.substring(photoFileName.lastIndexOf("."));
			InputStream is = new FileInputStream(photo);
			OutputStream os = new FileOutputStream("D:/myjava/gongyijijin/WebRoot/FileUpLoad/"+name);
			byte[] b = new byte[1024];
			int n=-1;
			while((n=is.read(b))>0){
				os.write(b,0,n);
			}
			os.flush();
			os.close();
			is.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "applyingfor";
	}
	
	
}















