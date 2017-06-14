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
  </head>
  
  <body>
  	<h3>捐款到账</h3>
    <div class="col-xs-5">
		<label for="basic-url">按用户名搜</label>
		<div class="input-group">
		  <span class="input-group-addon" id="basic-addon3">用户名</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-xs-5">
		<label for="basic-url">按捐款日期搜</label>
		<div class="input-group">
		  <span class="input-group-addon add-on" id="basic-addon1">开始日期<i class="icon-th"></i></span>
		  <input type="text" class="form-control date form_datetime" aria-describedby="basic-addon1">
		  <span class="input-group-addon add-on" id="basic-addon1">结束日期<i class="icon-th"></i></span>
		  <input type="text" class="form-control date form_datetime" aria-describedby="basic-addon1">
		</div>
	</div>
	<div class="col-xs-5">
		<label for="basic-url">按捐款金额搜</label>
		<div class="input-group">
		  <span class="input-group-addon" id="basic-addon3">最低</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		    <span class="input-group-addon" id="basic-addon3">最高</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-xs-5">
		<label for="basic-url">按项目名</label>
		<div class="input-group">
		  <span class="input-group-addon" id="basic-addon3">项目名称</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="col-xs-9">	
		</div>
		<button type="button" class="btn btn-primary btn">
			搜索
		</button>
		<button type="button" class="btn btn-primary btn">
			已做账
		</button>
		<button type="button" class="btn btn-primary btn" data-toggle="modal" data-target="#myModal">
			未做账
		</button>
    </div>
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    	<table class="table">
    		<tr>
    			<td >捐款人</td><td >捐款项目</td><td >捐款金额</td><td>员工姓名</td><td>捐款时间</td><td>做账时间</td><td>状态</td>
    		</tr>
    	</table>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
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
