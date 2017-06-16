<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>title</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
  	<form action="MoneyApply_save.action" method="post" enctype="multipart/form-data">
  		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
  		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
	  			<table class="table">
	  				<tr>
	  					<td>项目名称</td>
	  					<td>
	  						<%-- <s:select list="lis"  listValue="pro_name" name="pro_name"></s:select> --%>
	  						 <select name="pro_name" style="width:380; height:30">
	  							
	  							<option>你是谁给的</option>
	  							<option>是个大胖子</option>
	  							<option >sdfsfds</option>
	  						</select> 
	  					</td>
	  				</tr>
	  				<tr>
	  					<td>申请金额</td><td><input type="text" name="pro_money" size="50"/></td>
	  				</tr>
	  				<tr>
	  					<td>申请目的</td><td><input type="text" name="pro_appl_reason" size="50"/></td>
	  				</tr>
	  				<tr>
	  					<td>附属文件上传</td><td><input type="file" name="filename" size="50"/></td>
	  				</tr>
	  				<tr>
	  					<td></td><td><input type="submit" value="提交"/>	</td>
	  				</tr>	
	  			</table>
  			
  		</div>
  	</form>
  </body>
</html>
