package com.jingbinbinzhu;



import com.util.BaseAction;

public class RegisterAction extends BaseAction {
private Register reg;
private RegisterService regs= new RegisterServiceimp();
public Register getReg() {
	return reg;
}
public void setReg(Register reg) {
	this.reg = reg;
}
public RegisterService getRegs() {
	return regs;
}
public void setRegs(RegisterService regs) {
	this.regs = regs;
}

 public String addregister(){
	 
	 int qqq=regs.addRegister(reg);
	 if(qqq<0){
			return"error";
		}else{
	 return "success";}

 }
 
 public String find(){
	Register reg1=regs.findRegister(reg.getUser_name());
	System.out.println("=======reg1=======");
	System.out.println(reg1+";");
	 if(reg1.equals(reg.user_name)){
		 return "cuowu"; 
	 }else{

	return "success";}
 }
}
