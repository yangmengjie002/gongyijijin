<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>理事会资金审核</title>
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath}/admin/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">


<style type="text/css">
body {
	background-color: #E6E6E6;
}

#council {
	margin-top: 1%;
}

#council_div {
	margin: 3% 1% 1% 1%;
	font-weight: bold;
	font-size: 18px;
}

#council_row {
	margin-top: 5%;
}

#council_check {
	font-size: 22px;
}

#council_check_geren {
	margin-left: 70px;
}
</style>

</head>

<body>
	<form action="first_check"method="post">
		<div id="council">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-5">
						<div id="council_div">按资金审核ID查询</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">ID:</span> <input
								type="text" class="form-control" placeholder="请输入资金审核ID"
								aria-describedby="basic-addon1" id="council_username">
						</div>
					</div>
					<div class="col-xs-5">
						<div id="council_div">按项目日期查询</div>
						<div class="input-group">
							<span class="input-group-addon add-on" id="basic-addon1">开始日期<i
								class="icon-th"></i> </span> <input type="text"
								class="form-control date form_datetime"
								aria-describedby="basic-addon1"> <span
								class="input-group-addon add-on" id="basic-addon1">结束日期<i
								class="icon-th"></i> </span> <input type="text"
								class="form-control date form_datetime"
								aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="col-xs-2"></div>
				</div>

				<div class="row">
					<div class="col-xs-5">
						<div id="council_div">按资金申请ID查询</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">ID:</span> <input
								type="text" class="form-control" placeholder="请输入资金申请ID"
								aria-describedby="basic-addon1" id="council_username">
						</div>
					</div>
					<div class="col-xs-5">
						<div id="council_div">按项目金额查询</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon3">最低</span> <input
								type="text" class="form-control" id="basic-url"
								aria-describedby="basic-addon3"> <span
								class="input-group-addon" id="basic-addon3">最高</span> <input
								type="text" class="form-control" id="basic-url"
								aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-xs-2"></div>
				</div>




				<div class="row">
					<div class="col-xs-5">
						<div id="council_div">按项目负责人查询</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">负责人:</span> <input
								type="text" class="form-control" placeholder="Username"
								aria-describedby="basic-addon1" id="council_username">
						</div>
					</div>
					<div>
						&nbsp;<br>&nbsp;
					</div>
					<div class="col-xs-2">
						<input type="submit" class="btn btn-primary btn-lg" value="查询项目" />
					</div>
				</div>

			</div>


			<div id="council_row" class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
				<table class="table">
					<tr>
						<!-- <p class="text-center">字体居中</p> -->
						<th>资金审核ID</th>
						<th>资金申请ID</th>
						<th>申请项目ID</th>
						<th>申请金额</th>
						<th>审核员ID</th>
						<th>批准时间</th>
						<th>审核</th>
						<th>备注</th>
					</tr>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1 <!-- Button trigger modal -->
							<button type="button" class="btn btn-link" data-toggle="modal"
								data-target="#myModal1-1">
								<span class="glyphicon glyphicon-info-sign"></span>
							</button> <!-- Modal -->
							<div class="modal fade" id="myModal1-1" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">项目详情</h4>
										</div>
										<div class="modal-body">关爱流浪小猫小狗</div>
									</div>
								</div>
							</div></td>
						<td>100000</td>
						<td>1011</td>
						<td>2017-6-12</td>
						<td>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#myModal1-2">同意</button> <!-- Modal -->
							
							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#myModal1-3">驳回</button> <!-- Modal -->
							<div class="modal fade" id="myModal1-3" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">请输入驳回理由(此理由将会提交到用户)</h4>
										</div>
										<div class="modal-body">
											<textarea cols="68" rows="20"></textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary">确认</button>
										</div>
									</div>
								</div>
							</div></td>
						<td>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal2-3">备注</button> <!-- Modal -->
							<div class="modal fade" id="myModal1-3" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">请输入备注(此备注将会提交到用户)</h4>
										</div>
										<div class="modal-body">
											<textarea cols="68" rows="20"></textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary">确认</button>
										</div>
									</div>
								</div>
							</div></td>
					</tr>
					<tr>
						<td>2</td>
						<td>2</td>
						<td>2 <!-- Button trigger modal -->
							<button type="button" class="btn btn-link" data-toggle="modal"
								data-target="#myModal2-1">
								<span class="glyphicon glyphicon-info-sign"></span>
							</button> <!-- Modal -->
							<div class="modal fade" id="myModal2-1" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">项目详情</h4>
										</div>
										<div class="modal-body">资助山区贫困儿童</div>
									</div>
								</div>
							</div></td>
						<td>150000</td>
						<td>1012</td>
						<td>2017-6-13</td>
						<td>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#myModal2-2">同意</button> <!-- Modal -->
							<div class="modal fade" id="myModal2-2" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">请输入同意理由(此理由将会提交到用户)</h4>
										</div>
										<div class="modal-body">
											<textarea cols="68" rows="20"></textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary">确认</button>
										</div>
									</div>
								</div>
							</div>

							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#myModal1-3">驳回</button> <!-- Modal -->
							<div class="modal fade" id="myModal1-3" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">请输入驳回理由(此理由将会提交到用户)</h4>
										</div>
										<div class="modal-body">
											<textarea cols="68" rows="20"></textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary">确认</button>
										</div>
									</div>
								</div>
							</div></td>
						<td>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal2-3">备注</button> <!-- Modal -->
							<div class="modal fade" id="myModal2-3" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">请输入备注(此备注将会提交到用户)</h4>
										</div>
										<div class="modal-body">
											<textarea cols="68" rows="20"></textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary">确认</button>
										</div>
									</div>
								</div>
							</div></td>
					</tr>
				</table>
			</div>



		</div>
	</form>












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
