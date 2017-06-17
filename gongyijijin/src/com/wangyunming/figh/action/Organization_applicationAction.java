package com.wangyunming.figh.action;

import java.io.*;


import com.entity.Organization_application;
import com.opensymphony.xwork2.ActionSupport;
import com.util.BaseDao;

public class Organization_applicationAction extends ActionSupport{
	private Organization_application o;
	private File photo;
	
	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public Organization_application getO() {
		return o;
	}

	public void setO(Organization_application o) {
		this.o = o;
	}
	
	public String update(){
		System.out.println(o.getOrg_name());
		System.out.println(o.getOrg_pho());
		System.out.println(o.getOrg_add());
		System.out.println(o.getOrg_set_time());
		System.out.println(o.getOrg_person());
		System.out.println(o.getOrg_idNo());
		
		String sql="insert into organization_application values(?,?,?,?,?,?)";
		Object[] params={o.getOrg_name(),o.getOrg_pho(),o.getOrg_add(),o.getOrg_set_time(),o.getOrg_person(),o.getOrg_idNo()};
		BaseDao.executeUpdate(sql, params);
		
		
		try {
			InputStream is = new FileInputStream(photo);
			OutputStream os = new FileOutputStream("D:/myjava/gongyijijin/WebRoot/FileUpLoad/4444.txt");
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
		
		
		return "organizationfor";
	}
}
