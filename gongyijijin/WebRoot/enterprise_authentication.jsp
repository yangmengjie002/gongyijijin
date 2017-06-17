<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

#enterprise_input {
	margin: 30px;
	font-weight: blod;
	font-size: 23px;
}

#enterprise_input input {
	width: 370px;
	font-weight: blod;
	font-size: 23px;
}

#enterprise_input span {
	font-size: 20px;
}

#enterprise_file {
	display: inline;
}

#enterprise_file_span {
	margin-left: -270px;
}

#enterprise_submit {
	width: 200px;
	height: 60px;
}
</style>
</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>
	<form action="wang_update.action" method="post"  enctype="multipart/form-data" onsubmit="return haha()" >
		<div id="a1">
			<strong>&nbsp;</strong>
			<h2 title="企业身份认证登录">企业身份认证登录</h2>
			<span>（以下所有信息均为必填项）</span>
			<hr />

			<div class="input-group" id="enterprise_input">
				<span class="input-group-addon">机构全称</span> <input type="text"
					class="form-control" id="quancheng" name="o.org_name"> <span
					id="quancheng_span"></span>
			</div>
			<div class="input-group" id="enterprise_input">
				<span class="input-group-addon">机构地址</span> <input type="text"
					class="form-control" id="dizhi" name="o.org_add"> <span id="dizhi_span"></span>
			</div>
			<div class="input-group" id="enterprise_input">
				<span class="input-group-addon">机构电话</span> <input type="text"
					class="form-control" maxlength='11' id="enterprise_phone" name="o.org_pho"> <span
					id="enterprise_phone_span"></span>
			</div>



			<div class="input-group" id="enterprise_input">
				<span class="input-group-addon add-on" id="basic-addon1">机构注册日期<i
					class="icon-th"></i> </span> <input type="text"
					class="form-control date form_datetime"
					aria-describedby="basic-addon1" id="enterprise_date" name="o.org_set_time"> <span
					id="enterprise_date_span"></span>
			</div>




			<div class="input-group" id="enterprise_input">
				<span class="input-group-addon">机构负责人</span> <input type="text"
					class="form-control" id="enterprise_duty" name="o.org_person"> <span
					id="enterprise_duty_span"></span>
			</div>
			<div class="input-group" id="enterprise_input">
				<span class="input-group-addon">负责人身份证号</span> <input type="text"
					class="form-control" id="enterprise_no" name="o.org_idNo"> <span
					id="enterprise_no_span"></span>
			</div>
			<div id="enterprise_input">
				<span id="enterprise_file_span">机构证件</span> <input type="file"
					id="enterprise_file" name="photo">
			</div>

			<input type="submit" class="btn btn-success" value="提交"
				id="enterprise_submit" />



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
		//机构名称验证
		var quancheng1=false;
		$("#quancheng").blur(function(){
			var quancheng=$("#quancheng").val();
			if(quancheng.length==0){
				$("#quancheng_span").css("color","red");
				$("#quancheng_span").html("未填写");
			}else{
				$("#quancheng_span").html("");
				return quancheng1=true;
			}
		})
		$("#quancheng").focus(function(){
			var quancheng=$("#quancheng").val();
			if(quancheng.length==0){
				$("#quancheng_span").css("color","gray");
				$("#quancheng_span").html("请填写真实信息");
			}
		})
		//地址验证
		var dizhi1=false;
		$("#dizhi").blur(function(){
			var quancheng=$("#dizhi").val();
			if(quancheng.length==0){
				$("#dizhi_span").css("color","red");
				$("#dizhi_span").html("未填写");
			}else{
				$("#dizhi_span").html("");
				return dizhi1=true;
			}
		})
		$("#dizhi").focus(function(){
			var quancheng=$("#dizhi").val();
			if(quancheng.length==0){
				$("#dizhi_span").css("color","gray");
				$("#dizhi_span").html("请填写真实信息");
			}
		})
		//手机验证
		var enterprise_phone1=false;
		$("#enterprise_phone").focus(function(){
			var phone=$("#enterprise_phone").val();
			if(phone.length==0){
				$("#enterprise_phone_span").css("color","gray");
				$("#enterprise_phone_span").html("请填写真实信息");
			}
		});
		$("#enterprise_phone").blur(function(){
			var phone=$("#enterprise_phone").val();
			var reg=new RegExp('^1[3578][0-9]{9}$','gi');
			if(reg.test(phone)){
				$("#enterprise_phone_span").html("");
				return enterprise_phone1=true;
			}else if(phone.length!=0 && !reg.test(phone)){
				$("#enterprise_phone_span").html("格式错误");
				$("#enterprise_phone_span").css("color","red");
				return phone1=false;
			}else if(phone.length==0){
				$("#enterprise_phone_span").css("color","red");
				$("#enterprise_phone_span").html("未填写");
			}
		})
		//时间验证
		var enterprise_date1=false;
		$("#enterprise_date").blur(function(){
			var date=$("#enterprise_date").val();
			if(date.length==0){
				$("#enterprise_date_span").css("color","red");
				$("#enterprise_date_span").html("未填写");
			}else{
				$("#enterprise_date_span").html("");
				return enterprise_date1=true;
			}
		})
		$("#enterprise_date").focus(function(){
			var quancheng=$("#enterprise_date").val();
			if(quancheng.length==0){
				$("#enterprise_date_span").css("color","gray");
				$("#enterprise_date_span").html("请填写真实信息");
			}else{
				$("#enterprise_date_span").html("");
			}
		})
		//负责人验证
		var enterprise_duty1=false;
		$("#enterprise_duty").blur(function(){
			var quancheng=$("#enterprise_duty").val();
			if(quancheng.length==0){
				$("#enterprise_duty_span").css("color","red");
				$("#enterprise_duty_span").html("未填写");
			}else{
				$("#enterprise_duty_span").html("");
				return enterprise_duty1=true;
			}
		})
		$("#enterprise_duty").focus(function(){
			var quancheng=$("#enterprise_duty").val();
			if(quancheng.length==0){
				$("#enterprise_duty_span").css("color","gray");
				$("#enterprise_duty_span").html("请填写真实信息");
			}
		})
		//身份证验证
		var enterprise_no1=false;
		$("#enterprise_no").focus(function(){
			var no=$("#enterprise_no").val();
			if(no.length==0){
				$("#enterprise_no_span").css("color","gray");
				$("#enterprise_no_span").html("请填写真实信息");
			}
		});
		$("#enterprise_no").blur(function(){
			var no=$("#enterprise_no").val();
			var reg=new RegExp('^[0-9x]{5,20}$','gi');
			if(reg.test(no)){
				$("#enterprise_no_span").html("");
				return enterprise_no1=true;
			}else if(no.length!=0 && !reg.test(no)){
				$("#enterprise_no_span").html("格式错误");
				$("#enterprise_no_span").css("color","red");
			}else if(no.length==0){
				$("#enterprise_no_span").css("color","red");
				$("#enterprise_no_span").html("未填写");
			}
		})
		
		//总函数
		function haha(){
			if(quancheng1&&dizhi1&&enterprise_phone1&&enterprise_date1&&enterprise_duty1&&enterprise_no1){	
					alert("认证成功");
					return true;
				}else{
					alert("请完整填写信息");
					return false;
				} 
		 }
		
		
	</script>



	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
