<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>



<HTML>
<HEAD>
<style type="text/css">
#d1 {
	width: 100% px;
	height: 1000px;
	background-image: url(${pageContext.request.contextPath}/image/301896.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

#d11 {
	width: 300px;
	height: 400px;
	position: absolute;
	left: 70%;
	top: 20%;
}

#d111 {
	width: 298px;
	height: 50px;
	font-size: 40px;
	text-align: center;
	color: #FFFFFF;
}

#d112 {
	width: 298px;
	height: 342px;
	position: absolute;
}

#d113 {
	border: 2px solid #00CCFF;
}

#d1111 {
	width: 230px;
	height: 40px;
	margin-top: 30px;
	margin-left: 30px;
}

#mi {
	width: 38px;
	height: 40px;
	float: left;
	background-image: url(${pageContext.request.contextPath}/image/ren.png);
}

#mi1 {
	width: 230px;
	height: 40px;
}

#d1112 {
	width: 230px;
	height: 40px;
	margin-top: 30px;
	margin-left: 30px;
}

#suo {
	width: 38px;
	height: 40px;
	float: left;
	background-image: url(${pageContext.request.contextPath}/image/suo.png);
}

#suo1 {
	width: 230px;
	height: 40px;
}

#suo2{
	margin-left:30px;
	margin-top:20px;
	width:400px;
	height:50px;
}
#d1113 {
	width: 100px;
	height: 10px;
	margin-left: 170px;
	margin-top: 10px;
	font-size: 7px;
	color: red;
}

#a1 {
	text-decoration: none;
	color: #FFFFFF;
}

#d1114 {
	width: 230px;
	height: 40px;
	margin-top: 30px;
	margin-left: 30px;
}

#in1 {
	width: 230px;
	height: 40px;
	background: #00CCFF;
	color: #FCFCFC;
	font-size: 25px;
}

#d1115 {
	width: 230px;
	height: 10px;
	margin-left: 30px;
	margin-top: 10px;
}

#a3 {
	text-decoration: none;
	float: right;
	font-size: 15px;
	color: #00CCFF;
}

#d12 {
	width: 600px;
	height: 30px;
	position: absolute;
	left: 40%;
	top: 70%;
	text-align: center;
	padding-bottom: 10px;
}

#a4 {
	text-decoration: none;
	color: #FFFFFF;
}

#d13 {
	background: #000000;
	width: 100%;
	height: 20px;
}

#a5 {
	display: black;
	float: left;
	color: #0099CC;
	margin-left: 10%;
}

#a4 {
	color: #FFFFFF;
}

#a6 {
	display: black;
	margin-left: 70%;
}
</style>

<script type="text/javascript">
	function show(){
		var img = document.getElementById("yanzhen");
		img.src = "yanzhenServlet?time="+new Date().getTime();
	}
</script>
</HEAD>

<BODY>
	<div id="d1">
		<div id="d13">
			<a id="a5" href=" " seed="auth-gyzfb">AAA公益</a> <span id="a6"><a
				id="a4" href=" " seed="auth-czyc">AAA</a> | <a id="a4" href=" "
				seed="auth-lxwm">服务大厅</a> | <a id="a4" href=" " seed="auth-lxwm">提建议</a>
				| </span>

		</div>
		<form action="emp_login.action" method="post">

		<div id="d11" class="col-md-3">
			<div id="d111">用户登录</div>
			<div id="d113"></div>
			<div id="d112">
				<div id="d1111">${msg}
					<div id="mi"></div>
					<div id="mi1">
						<input type="text" name="em.emp_user" style="width:191px;height:40px;"
							class="ui-input ui-input-normal" placeholder="username">
					</div>
				</div>
				<div id="d1112">
					<div id="suo"></div>
					<div id="suo1">
						<input type="password" name="em.emp_pwd" style="width:191px;height:40px;"
							class="ui-input ui-input-normal" placeholder="password">
					</div>
					
				</div>
				
				<div id="suo2">
					<input type="text" name="code" style="width:80px;height:40px;text-align:center;margin-bottom:20px" placeholder="验证码"/>
					<img src="yanzhenServlet" onclick="show()" id="yanzhen"><a href="javascript:show()">看不清换一张</a>
				</div>
				
				
				<div id="d1114">
					<input type="submit" value="登录" id="in1"
						class="ui-input ui-input-normal">
				</div>
				
			</form>
				<div id="d1115">
					

				</div>

			</div>
		</div>

		<div id="d12" class="col-md-1">
			<p class="authcenter-foot-link">
				<a id="a4" href=" " seed="auth-gyzfb">关于AAA公益</a> | <a id="a4"
					href=" " seed="auth-czyc">诚征英才</a> | <a id="a4" href=" "
					seed="auth-lxwm">联系我们</a> | <a id="a4" href=" " seed="auth-ib">International
					Business</a> | <a id="a4" href=" " seed="auth-aboutAlipay">About
					AAA</a>
			</p>
			</div></div>
</BODY>
</HTML>
