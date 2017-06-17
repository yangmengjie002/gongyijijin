<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>title</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>机构审核</title>
<!-- Bootstrap -->

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
<style type="text/css">

body {
	width: 100%;
	height: 100%;
}

#a1 {
	width: 800px;
	height: 800px;
	margin: auto;
}

#proapply_input {
	margin: 30px;
	font-weight: blod;
	font-size: 23px;
}
#proapply_input span {
	font-size: 20px;
}

#proapply_input input {
	width: 370px;
	font-weight: blod;
	font-size: 23px;
}

#proapply_submit {
	width: 200px;
	height: 60px;
}

#proapply_file {
	display: inline;
}


</style>



</head>

<body>

	<jsp:include page="head.jsp"></jsp:include>
	<form action="app_add_ProApp.action" method="post" enctype="multipart/form-data" >
		<div id="a1">

			<div class="input-group" id="proapply_input">
				<span class="input-group-addon">项目名称</span> <input type="text"
					class="form-control" name="p.pro_name">
			</div>
			<div class="input-group" id="proapply_input">
				<span class="input-group-addon">申请金额</span> <input type="text"
					class="form-control" name="p.pro_monry">
			</div>
			<div class="input-group" id="proapply_input">
				<span class="input-group-addon add-on" id="basic-addon1">申请时间<i
					class="icon-th"></i> </span> <input type="text"
					class="form-control date form_datetime"
					aria-describedby="basic-addon1" id="enterprise_date"
					name="p.pro_begin_time">
			</div>
			<div class="input-group" id="proapply_input">
				<span class="input-group-addon">申请原因</span> <input type="text"
					class="form-control"  name="p.pro_appl_reason">
			</div>
			<div id="proapply_input">
				<span>文件上传</span> <input type="file" id="proapply_file"
					name="photo">
			</div>

			<input type="submit" class="btn btn-success" value="提交"
				id="proapply_submit" />

	</div>
		</form>

	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript"
		src="js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript">
		//时间
		$(".form_datetime").datetimepicker({
			language : 'zh-CN',
			format : "yyyy-mm-dd hh:ii",
			autoclose : true,
			todayBtn : true,
			startDate : "2013-02-14 10:00",
			minuteStep : 10
		})
		
	</script>


</body>
</html>
