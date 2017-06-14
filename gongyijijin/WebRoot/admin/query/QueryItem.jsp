<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<style type="text/css">
	#center,.top_vessel{
		margin-top:3%;
	}
	#bottom_Page{
		position:fixed;
		left:30%;
        bottom:0;
	}
	#query_item,#query_id,#query_date,#query_money{
		margin-top:4px;
	}
	body{
    		background-color: #E6E6E6;
    	}
</style>
<link href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="${pageContext.request.contextPath}/admin/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    
</head>

<body>
<h3>查询</h3>
<div class="top_vessel">
	<div class="col-xs-5" id="query_item">
		<label for="basic-url">按项目名称查询</label>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon3">项目名称</span> <input
				type="text" class="form-control" id="basic-url"
				aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-xs-5" id="query_date">
		<label for="basic-url">按项目日期查询</label>
		<div class="input-group">
			<span class="input-group-addon add-on" id="basic-addon1">开始日期<i
				class="icon-th"></i>
			</span> <input type="text" class="form-control date form_datetime"
				aria-describedby="basic-addon1"> <span
				class="input-group-addon add-on" id="basic-addon1">结束日期<i
				class="icon-th"></i>
			</span> <input type="text" class="form-control date form_datetime"
				aria-describedby="basic-addon1">
		</div>
	</div>
	<div class="col-xs-5" id="query_id">
		<label for="basic-url">按项目ID查询</label>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon3">项目ID</span> <input
				type="text" class="form-control" id="basic-url"
				aria-describedby="basic-addon3">
		</div>

	</div>
	<div class="col-xs-5" id="query_money">
		<label for="basic-url">按项目金额查询</label>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon3">最低</span> <input
				type="text" class="form-control" id="basic-url"
				aria-describedby="basic-addon3"> <span
				class="input-group-addon" id="basic-addon3">最高</span> <input
				type="text" class="form-control" id="basic-url"
				aria-describedby="basic-addon3">
		</div>

	</div>
	<div class="col-xs-2">
		<button type="button" class="btn btn-primary btn-lg active">查
			询 项 目
		</button>

	</div>
</div>
	<div id="center" class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
		<table class="table">
			<tr>
				<th>项目负责人</th>
				<th>项目简介</th>
				<th>项目金额</th>
				<th>捐款时间</th>
				<th>结束时间</th>
				<th>完成进度</th>
				<th>状态</th>
			</tr>
			<tr>
				<td>隔壁老王</td>
				<td>关爱流浪小猫小狗</td>
				<td>1000000</td>
				<td>2017-4-12</td>
				<td>2017-6-12</td>
				<td>
				<div class="progress">
				  <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
				    100%
				  </div>
				</div></td>
				<td>
					<span class="label label-success">已完成</span>
				</td>
			</tr>
			<tr>
				<td>老司机杨孟杰</td>
				<td>为爱自残，缺胳膊断腿</td>
				<td>100</td>
				<td>2017-6-13</td>
				<td>2017-9-20</td>
				<td>
				<div class="progress">
				  <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
				    70%
				  </div>
				</div></td>
				<td>
					<span class="label label-danger">未完成</span>
				</td>
			</tr>
		</table>
	</div>
	<div id="bottom_Page">
		<nav aria-label="Page navigation" >
		  <ul class="pagination pagination-lg">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li><a href="#">6</a></li>
		    <li><a href="#">7</a></li>
		    <li><a href="#">...</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
  		  </li>
  </ul>
</nav>
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
