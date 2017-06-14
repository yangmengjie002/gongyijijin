<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  
  <body>
  
  	<jsp:include page="head.jsp"></jsp:include>
  	<form action="">
  		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
  		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
  			<table class="table">
  				<tr>
  					<td>项目名称</td><td><input type="text" name="pro_name" size="50"/></td>
  				</tr>
  				<tr>
  					<td>申请金额</td><td><input type="text" name="pro_money" size="50"/></td>
  				</tr>
  				<tr>
  					<td>申请时间</td><td><input type="text" name="pro_begin_time" size="50"/></td>
  				</tr>
  				<tr>
  					<td>申请原因</td><td><input type="text" name="pro_appl_reason" size="50"/></td>
  				</tr>
  				<tr>
  					<td>文件上传</td><td><input type="file" name="filename" size="50"/></td>
  				</tr>
  				<tr>
  					<td></td><td><input type="submit" value="提交"/>	</td>
  				</tr>
  				
  			</table>
  		</div>
  	</form>
  	
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  </body>
</html>
