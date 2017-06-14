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
	
	<style type="text/css">
		#auth_image1{
			margin-top:8%;
		}
		image{
			border:1px solid gray;
		}
	</style>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  
  <body>
  	<jsp:include page="head.jsp"></jsp:include>
  	<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
  	<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
  		<h2>你好，请选择适合你的身份，完成以下注册和认证，以便发起公益项目</h2>
	    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
	    <div id="auth_image1" class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	    	<a href="personal_authentication.jsp"><img alt="" src="image/20170613154522.png" style=""></a>
	    </div>
	    <div  class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
	    <div id="auth_image1" class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	    	<a href="enterprise_authentication.jsp"><img alt="" src="image/20170613154541.png"></a>
	    </div>
    </div>
    

    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  </body>
</html>
