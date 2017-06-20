package jingbinbindeng;

import com.jingbinbinzhu.Register;
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

	

public String findlogin(){
	 String user=this.getRequest().getParameter("reg.user_name");
	String pas= this.getRequest().getParameter("reg.user_pass");
	   Register regi=qser.findRegister(user,pas);
	   System.out.println(reg.getUser_name()+reg.getUser_pass());
	   System.out.println(regi);
	   System.out.println("======bbbbb=======");
           if(regi!=null){
        	     
        	   return "qianlogin";
           }else {
        	   
        	   return "dengcuo";
           }
      
   }
}
