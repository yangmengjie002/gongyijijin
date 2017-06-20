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
	<link href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css" rel="stylesheet" media="screen">
	
	<style type="text/css">
    	body{
    		background-color: #E6E6E6;
    	}
    </style>
    <script type="text/javascript">
    	
    </script>
  </head>
  
  <body>
  	 <h3>修改密码</h3>
    <form action="/gongyijijin/emp_motifyEmPwd.action" method="post">
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
					<form class="form-horizontal">
					  <div class="form-group">
						<label for="inputPassword1" class="col-sm-2 control-label">原密码</label>
						<div class="col-sm-10">
						  <input name="oldPassword" type="password" class="form-control" id="inputPassword1" placeholder="OldPassword">${msg2}
						</div>
					  </div>
					  <div class="form-group">
						<label for="inputPassword2" class="col-sm-2 control-label">新密码</label>
						<div class="col-sm-10">
						  <input name="newPassword1" type="password" class="form-control" id="inputPassword2" placeholder="NewPassword">
						</div>
					  </div>
					  <div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">再输入密码</label>
						<div class="col-sm-10">
						  <input name="newPassword2" type="password" class="form-control" id="inputPassword3" placeholder="NewPassword">${msg1}
						</div>
					  </div>
					  <div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						</div>
					  </div>
					  <div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						  <button type="submit" class="btn btn-default">保存</button>
						  <button type="reset" class="btn btn-default">取消</button>
						</div>
					  </div>
					</form>
					${msg3}
				</div>
			</form>
			  
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
  </body>
</html>
