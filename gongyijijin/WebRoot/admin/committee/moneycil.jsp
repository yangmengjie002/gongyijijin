<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<form action="firstCheck_select.action" method="post">
		<div id="council">
			<div class="container-fluid">
				

				<div class="row">
					<div class="col-xs-5">
						<div id="council_div">资金使用申请人</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">资金使用申请人:</span> <input
								type="text" class="form-control" placeholder="请输入资金申请ID"
								aria-describedby="basic-addon1" id="council_username"name="userName"/>
						</div>
					</div>
					<div class="col-xs-5">
						<div id="council_div">按项目申请金额查询</div>
						<div class="input-group">
							<span
								class="input-group-addon" id="basic-addon3">申请金额</span> <input
								type="text" class="form-control" id="basic-url"
								aria-describedby="basic-addon3" name="money">
						</div>
					</div>
					<div class="col-xs-2"></div>
				</div>




				<div class="row">
					<div class="col-xs-5">
						<div id="council_div">按照项目名称搜索</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">项目名称:</span> <input
								type="text" class="form-control" placeholder="请输入资金审核ID"
								aria-describedby="basic-addon1" id="council_username" name="proName"/>
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
						<th>项目名称 </th>
						<th>资金使用申请人</th>
						<th>申请金额</th>
						<th>申请原因</th>
						<th>审核意见</th>
						<th>批准金额</th>
						
					</tr>
					<c:forEach items="${find}" var="fi" varStatus="fa">
					<tr>
					
						<td>${fi.fa}</td>
						<td>${fi.proName }</td>
						<td>${fi.userName}</td>
						<td>${fi.money }</td>
						<td>${fi.reason}</td>
						<td>
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#myModal1-2" name="agree">同意</button> Modal
							
							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#myModal1-3">驳回</button>
						</td>
						<td> <input name="agreeMoney"></td>
					</tr>
					</c:forEach>
					<!-- <tr>
						<td>1</td>
						<td>1</td>
						<td>1 Button trigger modal
							<button type="button" class="btn btn-link" data-toggle="modal"
								data-target="#myModal1-1">
								<span class="glyphicon glyphicon-info-sign"></span>
							</button> Modal
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
						
						<td>
							Button trigger modal
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#myModal1-2">同意</button> Modal
							
							<button type="button" class="btn btn-danger" data-toggle="modal"
								data-target="#myModal1-3">驳回</button> Modal
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
						
					</tr>
					<tr>
						<td>2</td>
						<td>2</td>
						<td>2 Button trigger modal
							<button type="button" class="btn btn-link" data-toggle="modal"
								data-target="#myModal2-1">
								<span class="glyphicon glyphicon-info-sign"></span>
							</button> Modal
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
					
						<td>
							Button trigger modal
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#myModal2-2">同意</button> Modal
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
								data-target="#myModal1-3">驳回</button> Modal
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
						
					</tr> -->
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
