<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style>
#g {
	position: absolute;
	left: 0px;
	top: 0px;
	background-color: gray;
	filter: alpha(opacity =   90);
	opacity: 0.9 !important;
	display: none;
	z-index: 5;
}

#dl {
	background: white;
	width: 400px;
	height: 300px;
	position: absolute;
	
	z-index: 100;
	display: none;
	top: 35%;
	left: 35%;
}

#input1 {
	width: 200px;
	height: 35px;
}

#input2 {
	width: 200px;
	height: 35px;
	font-size:25px;
	background: #99FF00;
}

#account {
	margin-top: 60px;
	margin-left: 60px;
}

#pasw {
	margin-top: 10px;
	margin-left: 60px;
}

	#pasw-1{
	   
	   margin-left:250px;
	   margin-top:70px;
	   font-size:7px;
       color:red;
	}
	#a1{
	text-decoration:none;
	     color:black;
	}
	#close{
	 margin-left:375px;
	}
</style>

</head>

<body>
	<div onclick="div()">登录</div>
	<div id="g"></div>
	<div id="dl">

		<div id="close">
			<input  type="button" value="X" onclick="gb()" />
		</div>
		<div id="account">
			用户名:<input id="input1" type="text" placeholder="邮箱/手机号/QQ " />
		</div>

		<div id="pasw">
			密&nbsp;&nbsp;&nbsp;码:<input id="input1" style="" type="password" />
		</div>
		<div id="pasw">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="input2" size="10"
				type="submit" value="登录" />
				
		</div>

       <div id="pasw-1">  
		      <a id="a1"href="">忘记密码？</a>| <a id="a1"href="">注册账户</a>
		   </div>
		  
	</div>

	<script type="text/javascript">
		var g = document.getElementById("g");
		var y = document.getElementById("dl");
		function div() {
			g.style.width = document.body.offsetWidth + "px";
			g.style.height = document.body.offsetHeight + "px";
			g.style.display = "block";
			y.style.display = "block";
		}
		function gb() {
			g.style.display = "none";
			y.style.display = "none";
		}
	</script>

</body>
</html>
