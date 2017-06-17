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
	<link href="${pageContext.request.contextPath}/admin/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <style type="text/css">
    	body{
    		background-color: #E6E6E6;
    	}
    </style>
    <script type="text/javascript">
    	function deleteUser(){
    		if(confirm("确认删除吗？")){
    			alert("删除成功");
    		}
    	}
    </script>
  </head>
  
  <body>
  <h3>用户管理</h3>
    <div id="me1" class="dd">
					<div class="col-xs-5">
						<label for="basic-url">按姓名搜</label>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon3">真实姓名</span>
						  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-xs-5">
						<label for="basic-url">按入职日期搜</label>
						<div class="input-group">
						  <span class="input-group-addon add-on" id="basic-addon1">入职日期<i class="icon-th"></i></span>
						  <input type="text" class="form-control date form_datetime" aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="col-xs-5">
						<label for="basic-url">按用户名名搜</label>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon3">用户名</span>
						  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-xs-5">
						<label for="basic-url">按状态搜</label>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon3">状态</span>
						  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="col-xs-10">	
						</div>
						<button type="button" class="btn btn-primary btn">
							搜索
						</button>
						<button type="button" class="btn btn-primary btn" data-toggle="modal" data-target="#myModal">
							添加用户
						</button>
							<!-- 模态窗 -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							  <div class="modal-dialog" role="document">
								<div class="modal-content">
						<form action="" method="post">
								  <div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<h4 class="modal-title" id="myModalLabel">添加用户</h4>
								  </div>
								  <div class="modal-body">
									<div class="row">
									  <div class="col-md-1"></div>
									  <div class="col-md-9">
									  	<table class="table">
									  		<tr>
									  			<td>用户名</td><td><input type="text" name="username"/></td>
									  		</tr>
									  		<tr>
									  			<td>密码</td><td><input type="password" name="password"/></td>
									  		</tr>
									  		<tr>
									  			<td>真实姓名</td><td><input type="text" name="name"/></td>
									  		</tr>
									  		<tr>
									  			<td>联系电话</td><td><input type="text" name="phone"/></td>
									  		</tr>
									  		<tr>
									  			<td>受雇日期</td><td><input type="text" name="hireDate"/></td>
									  		</tr>
									  		<tr>
									  			<td>离职日期</td><td><input type="text" name="leaveDate"/></td>
									  		</tr>
									  		<tr>
									  			<td>家庭住址</td><td><input type="text" name="address"/></td>
									  		</tr>
									  	</table>
										  
										   
									  </div> 
									</div>
								  </div>
								  <div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
									<button type="submit" class="btn btn-primary">保存</button>
								  </div>
							</form>
								</div>
							  </div>
							</div>

							<!--modal-->

					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!--表格部分-->
						<table class="table table-striped">
							<thead>
								<td class="col-xs-2">用户名<td>
								<td class="col-xs-2">真实姓名<td>
								<td class="col-xs-2">电话<td>
								<td class="col-xs-2">入职时间<td>
								<td class="col-xs-2">状态<td>
								<td class="col-xs-2">操作<td>
							</thead>
							<tbody>
								<tr>
									<td class="col-xs-2">jack<td>
									<td class="col-xs-2">成龙<td>
									<td class="col-xs-2">11111111<td>
									<td class="col-xs-2">2010-12-5<td>
									<td class="col-xs-2">在职<td>
									<td class="col-xs-2">
										<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal1">
											权限修改
										</button>
										<!-- 模态窗 -->
									<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
									  <div class="modal-dialog" role="document">
										<div class="modal-content">
										  <div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<h4 class="modal-title" id="myModalLabel">权限修改</h4>
										  </div>
										  <div class="modal-body">
											<div class="row">
											  <div class="col-xs-12">
												<p>用户管理</p>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox1" value="option1"> 添加用户
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox2" value="option2"> 删除用户
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox3" value="option3"> 状态修改
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox3" value="option3"> 权限修改
												</label>
											  </div>
											  <div class="col-xs-12">
												<p>理事会</p>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox1" value="option1"> 项目审核
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox2" value="option2"> 财务审核
												</label>
											  </div>
											  <div class="col-xs-12">
												<p>审核委员会</p>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox1" value="option1"> 用户认证
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox1" value="option1"> 项目审核
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox1" value="option1"> 财务审核
												</label>
											  </div>
											  
											  <div class="col-xs-12">
												<p>财务管理</p>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox1" value="option1"> 捐款管理
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox2" value="option2"> 支出管理
												</label>
												<label class="checkbox-inline">
												  <input type="checkbox" id="inlineCheckbox3" value="option3"> 支出审核
												</label>
											  </div>
											</div>
										  </div>
										  <div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
											<button type="button" class="btn btn-primary">保存</button>
										  </div>
										</div>
									  </div>
									</div>

											<!--modal-->
										<button class="btn btn-danger btn-xs" onclick="deleteUser()">
											删除
										</button>
									<td>
								</tr>
								<tr>
									<td class="col-xs-2">jack<td>
									<td class="col-xs-2">成龙<td>
									<td class="col-xs-2">11111111<td>
									<td class="col-xs-2">2010-12-5<td>
									<td class="col-xs-2">在职<td>
									<td class="col-xs-2">
										<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal1">
											权限修改
										</button>
										<!-- 模态窗 -->
											<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
											  <div class="modal-dialog" role="document">
												<div class="modal-content">
												  <div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													<h4 class="modal-title" id="myModalLabel">权限修改</h4>
												  </div>
												  <div class="modal-body">
													<div class="row">
													  
													  
													</div>
												  </div>
												  <div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
													<button type="button" class="btn btn-primary">保存</button>
												  </div>
												</div>
											  </div>
											</div>

											<!--modal-->
										<button class="btn btn-danger btn-xs" onclick="deleteUser()">
											删除
										</button>
									<td>
								</tr>
							</tbody>
						</table>
					</div>
		</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript">
		$(".form_datetime").datetimepicker({
			language: 'zh-CN',
			format: "yyyy-mm-dd hh:ii",
			autoclose: true,
			todayBtn: true,
			startDate: "2013-02-14 10:00",
			minuteStep: 10
		})
		
	</script>            
  </body>
</html>
