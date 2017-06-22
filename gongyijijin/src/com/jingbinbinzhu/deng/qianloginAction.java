package com.jingbinbinzhu.deng;


import com.jingbinbinzhu.zhuce.Register;
import com.util.BaseAction;

public class qianloginAction extends BaseAction {
	private Register reg;
	private qianservice qser=new qianserviceimp();

	public Register getReg() {
		return reg;
	}

	public void setReg(Register reg) {
		this.reg = reg;
	}


	/**
	 * 登录动作。
	 * @return
	 */
	public String findlogin(){
		String user=this.getRequest().getParameter("reg.user_name");
		String pas= this.getRequest().getParameter("reg.user_pass");
		Register regi=qser.findRegister(reg.getUser_name(),reg.getUser_pass());
		if(regi!=null){
			this.getRequest().setAttribute("regi", regi);
			return "qianlogin";
		}else {
			this.getRequest().setAttribute("msg", "用户名或密码错误");
			return "dengcuo";
		}

	}
	
	/**
	 * 退出动作。
	 * @return
	 */
	public String deletelogin(){
		this.getSession().invalidate();
		return "qianlogin";
	}
}
