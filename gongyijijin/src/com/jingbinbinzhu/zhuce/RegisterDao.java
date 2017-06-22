package com.jingbinbinzhu.zhuce;


public interface RegisterDao {
 public  int addRegister(Register reg);
 
 public Register findRegister(String user_name);
}
