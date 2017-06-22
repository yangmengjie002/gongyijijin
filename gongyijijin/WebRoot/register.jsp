<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>注册</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">


<style>
#register_er_div {
	width: 80%;
	margin-top:3%;
	float: left;
	background:#d7ffeb;
}

#san_div {
	width: 40%;
	float: right;
}

#username {
	width: 50%;
	margin: 15px 0 0 20%;
}

#username_div {
	height: 30px;
	width: 50%;
	margin: 0 0 0 40%;
	font-size: 17px;
	color: #330033;
}

#password {
	width: 50%;
	margin: 15px 0 0 20%;
}

#password_div {
	height: 30px;
	width: 50%;
	margin: 0 0 0 20%;
	font-size: 17px;
	color: #330033;
}

#password_to {
	width: 50%;
	margin: 15px 0 0 20%;
}

#password_to_div {
	height: 30px;
	width: 50%;
	margin: 0 0 0 20%;
	font-size: 17px;
	color: #330033;
}

#phone {
	width: 50%;
	margin: 15px 0 0 20%;
}

#phone_div {
	height: 30px;
	width: 50%;
	margin: 0 0 0 20%;
	font-size: 17px;
	color: #330033;
}

#email {
	width: 50%;
	margin: 15px 0 0 20%;
}

#email_div {
	height: 30px;
	width: 50%;
	margin: 0 0 0 20%;
	font-size: 17px;
	color: #330033;
}

#submit {
	margin: 15px 0 0 50%;
	height: 100px;
}

#submit input {
	width: 15%;
	height: 50px;
}

#anniu1 {
	position: absolute;
	left: 40%;
}


.hong {
	color: red;
}

#button_one{
			border:2px solid gray;
			width:100%;
			background:#F5F5F5;
			margin-top:45%;
		}
		body{
			text-align:center;
		}


</style>


</head>

<body>

	<jsp:include page="head.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10" id="yi_div">


				<form action="register_addregister.action" method="post"
					onsubmit="return add()">
					<div id="register_er_div">
						<div class="input-group input-group-lg" id="username">
							<span class="input-group-addon" id="sizing-addon1">用户名</span> <input
								type="text" class="form-control user" name="reg.user_name"placeholder="您的账户名和登录名"
								aria-describedby="sizing-addon1">
						</div>
						<div id="username_div"></div>
						<div class="input-group input-group-lg" id="password">
							<span class="input-group-addon" id="sizing-addon1">设置密码</span> <input
								type="password" class="form-control mima" name="reg.user_pass"
								placeholder="建议至少使用两种字符组合" aria-describedby="sizing-addon1">
						</div>
						<div id="password_div"></div>
						<div class="input-group input-group-lg" id="password_to">
							<span class="input-group-addon" id="sizing-addon1">确认密码</span> <input
								type="password" class="form-control mimato"
								placeholder="请再次输入密码" aria-describedby="sizing-addon1">
						</div>
						<div id="password_to_div"></div>
						<div class="input-group input-group-lg" id="phone">
							<span class="input-group-addon" id="sizing-addon1">手机号</span> <input
								type="text" class="form-control phone" maxlength='11' name="reg.user_phone"
								placeholder="建议使用常用手机" aria-describedby="sizing-addon1">
						</div>
						<div id="phone_div"></div>
						<div class="input-group input-group-lg" id="email">
							<span class="input-group-addon" id="sizing-addon1">邮箱</span> <input
								type="text" class="form-control email" name="reg.user_emal" placeholder="建议使用常用邮箱"
								aria-describedby="sizing-addon1">
						</div>
						<div id="email_div"></div>
						<div id="submit">
							<input type="submit" class="btn btn-default btn btn-success"
								value="提交" id="anniu1" />
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	
	
	
			<div id="button_one">
		<div style="height:auto">
				<h2>联系我们</h2>
				<span>项目合作：gongyi@qq.com &nbsp;&nbsp;媒体合作:meiti@qq.com &nbsp;&nbsp;意见反馈|网友投诉</span>
				<hr>
				<div>
					<a href="#">公益慈善基金会</a>&nbsp;|&nbsp;<a href="#">关于慈善</a>&nbsp;|&nbsp;
					<a href="#">服务条款</a>&nbsp;|&nbsp;<a href="#">公益基金版权所有</a>&nbsp;&nbsp;
				</div>
		</div>
	</div>

	

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="css/jquery-2.1.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

	<script>
		//设置用户名验证
		$(".user").focus(function(){
			var user=$(".user").val();
			var reg=/^\w{5,}$/g;
			if(user.length==0){
				$("#username_div").css("color","gray");
				$("#username_div").html("支持中文、字母、数字、“-”“_”的组合，4-20个字符");
			}
		});
		var user1=false;
		$(".user").blur(function(){
			var user=$(".user").val();
			var reg=/^\w{6,}$/g;
			if(reg.test(user)){
				$("#username_div").html("");
				return user1=true;
			}else if(user.length==0){
				$("#username_div").html("");
				return user1=false;
			}else if(!reg.test(user) && user.length!=0){
				$("#username_div").html("用户名格式有误");
				$("#username_div").css("color","red");
				return user1=false;
			}
		});
		$(".user").keydown(function(){
			var user=$(".user").val();
			var reg=/^\w{5,}$/g;
			if(reg.test(user)){
				$("#username_div").html("");
			}
		})
		
		//设置密码验证
		$(".mima").focus(function(){
			var mima=$(".mima").val();
			if(mima.length==0){
				$("#password_div").css("color","gray");
				$("#password_div").html("建议使用字母、数字和符号两种及以上的组合，6-20个字符");
			}
		});
		var mima1=false;
		$(".mima").blur(function(){
			var mima=$(".mima").val();
			var reg=new RegExp('^.{6,18}$','gi');
			if(reg.test(mima)){
				$("#password_div").html("");
				return mima1=true;
			}else if(mima.length!=0 && !reg.test(mima)){
				$("#password_div").html("用户名格式错误");
				$("#password_div").css("color","red");
				return mima1=false;
			}else if(mima.length==0){
				$("#password_div").html("");
				return mima1=false;
			}
		})
		$(".mima").keydown(function(){
			var mima=$(".mima").val();
			var reg=new RegExp('^.{5,18}$','gi');
			if(reg.test(mima)){
				$("#password_div").html("");
			}
		})

		//设置确认密码验证
		var mimato1=false;
		$(".mimato").focus(function(){
			var mimato=$(".mimato").val();
			if(mimato.length==0){
				$("#password_to_div").css("color","gray");
				$("#password_to_div").html("请再次输入密码");
			}
		});
		$(".mimato").blur(function(){
			var mimato=$(".mimato").val();
			var mima=$(".mima").val();
			if(mima!=mimato){
				$("#password_to_div").html("两次密码不一致");
				$("#password_to_div").css("color","red");
				return mimato1=false;
			}else{
				$("#password_to_div").html("");
				return mimato1=true;
			}
		})
		
		//设置手机号验证
		var phone1=false;
		$(".phone").focus(function(){
			var phone=$(".phone").val();
			if(phone.length==0){
				$("#phone_div").css("color","gray");
				$("#phone_div").html("完成验证后，你可以用该手机登录和找回密码");
			}
		});
		$(".phone").blur(function(){
			var phone=$(".phone").val();
			var reg=new RegExp('^1[3578][0-9]{9}$','gi');
			if(reg.test(phone)){
				$("#phone_div").html("");
				return phone1=true;
			}else if(phone.length!=0 && !reg.test(phone)){
				$("#phone_div").html("格式错误");
				$("#phone_div").css("color","red");
				return phone1=false;
			}else if(phone.length==0){
				$("#phone_div").html("");
				return phone1=false;
			}
		})

		//设置邮箱验证
		var email1=false;
		$(".email").focus(function(){
			var email=$(".email").val();
			if(email.length==0){
				$("#email_div").css("color","gray");
				$("#email_div").html("建议使用字母、数字和符号两种及以上的组合，6-20个字符");
			}
		});
		$(".email").blur(function(){
			var email=$(".email").val();
			var reg=new RegExp('^\\w+([\-_\.]?\\w*)*@\\w+(\.\\w+){1,3}$','gi');
			if(reg.test(email)){
				$("#email_div").html("");
				return email1=true;
			}else if(email.length!=0 && !reg.test(email)){
				$("#email_div").html("邮箱格式错误");
				$("#email_div").css("color","red");
				return email1=false;
			}else if(email.length==0){
				$("#email_div").html("");
				return email1=false;
			}
		})
		$(".email").keydown(function(){
			var email=$(".email").val();
			var reg=new RegExp('^\\w+([\-_\.]?\\w*)*@\\w+(\.\\w+){1,3}$','gi');
			if(reg.test(email)){
				$("#email_div").html("");
			}
		})
		
		 function add(){
			if(user1&&mima1&&mimato1&&phone1&&email1){	
					return true;
				}else{
					return false;
				} 
		 }
	</script>




</body>
</html>
